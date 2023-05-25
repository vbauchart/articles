# Comprendre le réseau quand on y connaît vraiment rien

- [Comprendre le réseau quand on y connaît vraiment rien](#comprendre-le-réseau-quand-on-y-connaît-vraiment-rien)
  - [Notions couvertes](#notions-couvertes)
  - [L'analogie de la remise de courrier](#lanalogie-de-la-remise-de-courrier)
    - [Avertissement](#avertissement)
    - [Hypothèses de départ](#hypothèses-de-départ)
    - [Algorithme de remise de courrier primitif](#algorithme-de-remise-de-courrier-primitif)
    - [Algorithme de courrier amélioré : la commutation](#algorithme-de-courrier-amélioré--la-commutation)
    - [Algorithme de redirection du courrier : le routage](#algorithme-de-redirection-du-courrier--le-routage)
    - [Le cas spécial des départements d'outre-mer : les sous-réseaux](#le-cas-spécial-des-départements-doutre-mer--les-sous-réseaux)
  - [Application des notions précédentes aux réseaux IP (Internet Protocol)](#application-des-notions-précédentes-aux-réseaux-ip-internet-protocol)
    - [Le datagramme IP](#le-datagramme-ip)
    - [L'adresse IP](#ladresse-ip)
    - [La notation CIDR](#la-notation-cidr)
    - [Configuration des nœuds](#configuration-des-nœuds)
    - [Configuration des switchs](#configuration-des-switchs)
    - [Configuration des routeurs](#configuration-des-routeurs)
    - [Exemple complet](#exemple-complet)
  - [Conclusion](#conclusion)

## Notions couvertes

Le but de cet article est de comprendre les notions fondamentales d'un réseau TCP/IP.

- Commutation de datagrammes
- Routage de datagrammes
- Adresse IP
- CIDR et masque de sous-réseau

## L'analogie de la remise de courrier

### Avertissement

Le système postal que nous allons décrire ici est imaginé à des fins **pédagogiques**. Bien que ressemblant au vrai système postal, il est totalement **fictif**. Si le sujet, vous intéresse, je vous invite à consulter la page Wikipedia https://fr.wikipedia.org/wiki/Code_postal_en_France.

### Hypothèses de départ

Pour comprendre la remise d'un paquet d'un ordinateur à un autre, nous pouvons le comparer à la remise d'un courrier par le service postal.

Nous allons donc imaginer la mise en place d'un service postal fictif à l'échelle de la France.

Imaginons une personne qui doit envoyer un courrier depuis Saint-Médard-en-Jalles (`33160`) vers Démuin (`80110`). Pour simplifier l'analogie, nous allons simplement considérer la remise de courrier entre deux communes avec leurs codes postaux respectifs. Le courrier doit d'abord être déposé dans la boite au lettre de la commune où il sera pris en charge par le système postal qui sera en charge de l'acheminer dans la boite au lettre de la commune de destination.

Pour rappel, un code postal est constitué d'un numero de département par ses 2 premiers digits, puis d'un identifiant de commune sur les 3 derniers digits.

| Commune                | Code postal | Département | Identifiant de commune |
| ---------------------- | ----------- | ----------- | ---------------------- |
| Saint-Médard-en-Jalles | `33160`     | `33`        | `160`                  |
| Démuin                 | `80110`     | `80`        | `110`                  |

Sur l'enveloppe au départ de Bordeaux, nous indiquons simplement le code postal de la commune de destination, et au dos nous écrivons notre propre code postal pour que le destinataire puisse nous répondre.

Exemple de courrier à envoyer :

|              | Commune                | Code postal |
| ------------ | ---------------------- | ----------- |
| Expéditeur   | Saint-Médard-en-Jalles | 33160       |
| Destinataire | Démuin                 | 80110       |

### Algorithme de remise de courrier primitif

Voici donc notre premier algorithme sans aucune contrainte :

1. Je met l'enveloppe dans la boite aux lettres de Saint-Médard-en-Jalles
2. Un facteur récupère l'enveloppe et la transporte jusqu'à la boite aux lettres de Démuin
3. Mon destinataire récupère l'enveloppe dans la boite aux lettres de Démuin

Voici le trajet qui sera effectué par notre courrier :
![Alt text](images/saint-medart-demuin-direct.jpg)

Avec cet algorithme, il faut effectuer autant de trajet qu'il y a de courrier à remettre. Dans le cadre de l'analogie un réseau câblé, cela signifierai qu'il faut établir des câbles réseaux entre chaque communes de la carte, soit pour $N$ communes, nous aurions besoin de $N^N$ câbles.

### Algorithme de courrier amélioré : la commutation

Pour optimiser la remise de nos courriers, nous allons découper la France en départements, et chaque département disposera d'un "bureau distributeur" en charge de récupérer tous les courriers en partance de son département. Pour faciliter la numérotation, la commune du bureau distributeur aura un code postal un peu spécial composé du numéro du département puis de `000`.

Une fois le courrier au bureau distributeur, il existe 2 choix :

- Si le destinataire est dans le même département, alors le courrier lui est directement remis
- Si le destinataire est dans un autre département, alors le courrier est remis au bureau distributeur du département dans lequel se trouve le destinataire.

Avec ces nouveaux éléments, l'algorithme est modifié:

1. Je met l'enveloppe dans la boite aux lettres de Saint-Médard-en-Jalles
2. Un facteur récupère l'enveloppe et la transporte jusqu'au bureau distributeur du département
3. Un facteur récupère l'enveloppe au bureau distributeur
4. Mon destinataire récupère l'enveloppe dans la boite aux lettres de Démuin

Voici le nouveau trajet effectué par le courrier :

![Alt text](images/saint-medart-demuin-prefecture.jpg)

Voici la liste des nouveaux codes postaux maintenant impliqués :

|                     | Commune                | Code postal |
| ------------------- | ---------------------- | ----------- |
| Expéditeur          | Saint-Médard-en-Jalles | `33160`     |
| Bureau Gironde (33) | Bordeaux               | `33000`     |
| Bureau Sommes (80)  | Amiens                 | `80000`     |
| Destinataire        | Démuin                 | `80110`     |

Si on regarde l'algorithme du point de vue des codes postaux :

1. L’expéditeur dépose le courrier en partance dans la boite aux lettres `33160`
2. Le courrier est automatiquement acheminé dans la boite aux lettres `33000`
3. Lors du tri du courrier, on extrait le département destinataire et on calcule le code postal du département `80` à partir du code postal du destinataire `80110`, et en fait transiter le courrier jusqu'à la boite au lettres `80` + `000` = `80000`
4. Le courrier est ensuite acheminé de la boite `80000` vers la boite destinataire `80110`

> Dans l'analogie avec un réseau IP, le bureau distributeur est appelé un **commutateur** (ou **switch** en anglais).

Bien que nous ayons déjà optimisé notre système postal, il reste encore à trouver une optimisation pour acheminer le courrier entre chaque bureau distributeur. en effet, dans l'état actuel de notre algorithme, pour $M$ bureaux distributeur, nous aurions besoin de $M^M$ câbles pour relier tous les bureaux distributeurs entre eux.

### Algorithme de redirection du courrier : le routage

Dans cette nouvelle version de notre système postal, nous allons maintenant considérer que les bureaux distributeurs ne peuvent remettre du courrier **uniquement** aux bureaux distributeurs des **départements limitrophes**.

Parcours de notre courrier avec la nouvelle contrainte :

![Alt text](images/saint-medart-demuin-routage-numeros.jpg)

Pour que le nouvel algorithme fonctionne, chaque bureau distributeur doit avoir un tableau pré-calculé de tous les départements possibles associé avec le département limitrophe vers lequel envoyer le courrier. Chaque département parcouru possède également sa propre liste.

Exemple de tableau des redirections connues du département `33` :

| Département destinataire | Département de transit |
| ------------------------ | ---------------------- |
| `85`                     | `17`                   |
| `79`                     | `24`                   |
| `86`                     | `16`                   |
| `16`                     | `16`                   |
| `87`                     | `24`                   |
| `19`                     | `24`                   |
| `24`                     | `24`                   |
| `46`                     | `24`                   |
| ...                      | ...                    |
| `80`                     | `24`                   |

Voici comment fonctionne ce tableau : lors de l’expédition d'un courrier depuis le départements `33` à destination du département `87`, on sait que le plus court chemin est par le département `24` donc on transmet le courrier au bureau distributeur du département `24`, qui transmettra alors directement au bureau distributeur du département `87` qui lui est limitrophe.

Chaque département traversé possède donc son propre tableau optimisé des départements associé au département limitrophe vers lequel envoyer le courrier. Si jamais un bureau d'un département était subitement fermé, le tableau des département limitrophes serait alors recalculé. En France, il y a très souvent au moins 2 département limitrophes, donc on peut facilement trouver un moyen de contourner le département fermé. De la même façon, on peut imaginer associer un *poids* à chaque route. Par exemple, un département montagneux pourra avoir un poids plus élevé qu'un département en plaine. L'algorithme prendra alors en compte ces paramètres afin de calculer le prochain département.

Avec cet algorithme de redirection de proche en proche :

1. L’expéditeur dépose le courrier en partance dans la boite aux lettres `33160`
2. Le courrier est automatiquement acheminé dans la boite aux lettres `33000`
3. On cherche dans la table de routage le meilleur département limitrophe pour `80110` : `80`->`24`, on envoie donc le courrier vers `24000`
4. Le courier arrive à `24000` qui cherche dans sa table de routage: `80110` : `80`->`87` et envoie donc le courrier à `87000`
5. Chaque bureau distributeur de département envoie de proche en proche jusqu'au buteau destinataire `8000.`
6. Le courrier est ensuite acheminé de la boite `80000` vers la boite destinataire `80110`

![Alt text](images/saint-medart-demuin-routage-tableau.jpg)

> Dans l'analogie avec un réseau IP, celui qui redirige le courrier au département suivant est appelé un **routeur** (ou **router** en anglais).
> Dans notre analogie, les bureaux distributeurs font office à la fois de **commutateurs** et de **routeurs** mais dans les réseaux IP, ce sont des appareils différents comme nous le verrons dans le chapitre suivant.

Ce système de routage a beaucoup d'avantages :

- Une fois le tableau de redirection calculé, il n'y a pas besoin d'autorité centrale pour prendre les décision d'itinéraire. Le système est ainsi extrêmement résiliant.
- Le système n'a pas besoin de l'historique de passage d'un courrier dans les différent département. L'enveloppe de courrier n'a pas besoin d'être modifiée pendant son parcours
- Le système peut stocker plusieurs routes possibles pour une même destination, et il peut aussi s'adapter à l'ajout et la suppression de département intermédiaires.

### Le cas spécial des départements d'outre-mer : les sous-réseaux

Lors du rattachement des départements d'outre-mer au système postal français, il s'est posé la question de l'attribution de nouveaux code postaux à ces départements. Malheureusement, la France commençait à ne **plus avoir assez de numéros de département disponibles**! Il aurait été possible modifier le système pour le faire passer sur 6 digits afin de pouvoir créer des numero de département sur 3 digits, mais ce genre de changement est généralement très coûteux. Par chance, ces départements étaient généralement des petits territoires avec assez peu de communes.

Il a donc été trouvé une solution plus simple qui résolvait tous ces problèmes tout en gardant le code postal sur 5 digits : **"augmenter" à 3 digits le numéro du département, et "réduire" à 2 digits l'identifiant de la commune**. En faisant ce choix, nous gardons un code postal sur 5 digits, mais en contrepartie, nous sommes limité à identifier moins de 99 communes par département.

| Commune                | Code postal | Département | commune |
| ---------------------- | ----------- | ----------- | ------- |
| Saint-Médard-en-Jalles | `33160`     | `33`        | `160`   |
| Démuin                 | `80110`     | `80`        | `110`   |
| Trois-Rivières         | `97114​`    | `971`       | `14`    |
| Saint-Paul             | `97460​`    | `974`       | `60`    |

Pour adapter ces nouveaux identifiants au système de **commutation** et de **routage** existant, c'est assez simple :

- Au niveau de la commune de départ et de destination, chaque commune doit stocker un paramètre qui permet de calculer le centre distributeur du département. Par exemple en gardant en mémoire le nombre de digit à "retirer" pour obtenir le code postal du bureau distributeur

| Code postal de la commune | Nombre de digit identifiant le département | Code postal du bureau distributeur |
| ------------------------- | ------------------------------------------ | ---------------------------------- |
| `33160`                   | 2                                          | `33000`                            |
| `80110`                   | 2                                          | `80000`                            |
| `97114​`                  | 3                                          | `97100`                            |
| `97460​`                  | 3                                          | `97400`                            |

- Au niveau des tableaux de redirection, chaque bureau de distribution doit également connaître le nombre de digits à enlever pour connaître le département correspondant. L'algorithme lui ne change pas, il manipule uniquement des nombres plus grand.

| Code postal de la commune | Nombre de digit identifiant le département | Département |
| ------------------------- | ------------------------------------------ | ----------- |
| `33160`                   | 2                                          | `33`        |
| `80110`                   | 2                                          | `80`        |
| `97114​`                  | 3                                          | `971`       |
| `97460​`                  | 3                                          | `974`       |

> Dans l'analogie avec un réseau IP, le nombre de digit identifiant la commune est appelé un **masque de sous-réseau** (**subnet mask** ou **netmask** en anglais).


## Application des notions précédentes aux réseaux IP (Internet Protocol)

### Le datagramme IP



Lorsque 2 appareils (ou **nœuds**) du réseau veulent communiquer, ils doivent s'envoyer une certaine quantité de donnée. Pour commencer, les données vont être découpées en petits morceaux de petites tailles appelés **paquets**. On ajoute à ces données "brutes" des données supplémentaires, comme l'adresse de destination et l'adresse de retour, ainsi que d'autres données utiles à la transmission.

> C'est l'équivalent du courrier dans une enveloppe dans l'exemple du service postal.

Ils sont ensuite envoyé sur le réseaux et transitent au travers des **switchs** et **routeurs** rencontrés pendant son trajets.

Le destinataire reçoit ces petits paquets potentiellement dans le désordre et doit rassembler les données dans l'ordre pour reconstruire le message originel.

### L'adresse IP

Il peut y avoir une très grande quantité d'appareils sur le réseau et chaque appareil doit avoir une adresse unique, il faut donc que les adresses soit assez grandes pour que Internet puisse fonctionner.

Une adresse IP version 4 (IPv4) est constitué de 32 bits et peut donc décrire $2^{32}$ addresses, soit à peu près 4 milliards. Ca paraissait suffisant lors de sa création mais avec tous les nouveaux usages, on parle désormais de pénurie d'adresse au niveau mondial.

Une adresse IP version 6 (IPv6) est constitué de 128 bits et peut donc décrire $2^{128}$ addresses, soit à peu près 340 sextillions. Ce protocole a été créé pour résoudre les limites de IPv4, et au passage lui ajouter quelques fonctionnalités, notemment pour augmenter la sécurité.

Plus complet (et plus complexe!), IPv6 est sensé remplaçé IPv4 à terme, mais la migration est difficile car elle nécéssite le changement de tout le matériel. De plus ces 2 protocoles ne sont pas compatibles entre eux, et la migration nécéssite de mettre au point des stratégies de cohabitation pas toujours simples.

**Nous allons donc terminer les explications avec IPv4 uniquement** car leurs principes sont globalement identiques.

Une adresse IPv4 s'écrit généralement avec 4 octets de 8 bits convertis en décimal.

Exemple : `193.43.55.67` = `11000001.00101011.00110111.01000011`

> C'est l'équivalent du code postal dans l'exemple du service postal

### La notation CIDR

Comme nous l'avons vu avec les code postaux, une adresse contient 2 informations :

- Le réseau dans lequel se trouve l'appareil (équivalent du département)
- L'identifiant de l'appareil au sein de se réseau (équivalent de l'identifiant de commune)

Seul les nœuds et les routeurs ont besoins de savoir comment découper l'adresse afin de router correctement les datagrammes. Les datagrammes eux-mêmes n'emportent pas cette information. La plupart du temps, cette information n'est pas très utile dans le quotidien du développeur.

Elle en revanche cruciale pour l'architecte réseau. En effet, dans le Cloud ou encore plus sur un réseau physique, l'architecte réseau va avoir à sa disposition un réseau qu'il va devoir découper intelligemment. Par exemple, il devra réfléchir pour avoir suffisamment de sous-réseaux pour créer des règles d'accès fines (quel sous-réseau aura le droit d'aller sur internet, quel sous-réseau hébergera les bases de données, etc...) tout en gardant assez de "digits" disponibles pour pouvoir créer suffisamment d'adresses à l'intérieur de ces sous-réseaux.

Pendant longtemps, on a dissocié la notation de l'**adresse IP** et la notation de **masque de sous-réseau**, qui permet de déduire quel partie de l'adresse est le réseau ou l'identifiant:

L'exemple le plus courant est d'utiliser le dernier octet comme identifiant du nœud :

|                           | Représentation classique |
| ------------------------- | ------------------------ |
| Adresse du nœud           | 193.43.55.67             |
| Masque de sous-réseau     | 255.255.255.0            |
| Adresse du réseau         | 193.43.55.0              |
| Nombre de nœuds possibles | 254                      |

A défaut d'être simple, cette notation est très "proche" du fonctionnement interne, car pour trouver le réseau à partir de l'adresse, le processeur va appliquer une opération `AND` binaire.

Heureusement, une notation plus compréhensible a été trouvé : le CIDR (*Classless Inter-Domain Routing*). Cette notation rajoute simplement un slach `/` suivi d'un nombre décimal pour indiquer la taille de l'adresse réseau.

Même exemple que précédemment mais avec la notation CIDR, le masque `255.255.255.0` signifie "garde les 24 premiers digits binaires" :

|                           | Représentation CIDR |
| ------------------------- | ------------------- |
| Adresse du nœud           | 193.43.55.67/24     |
| Adresse du réseau         | 193.43.55.0         |
| Nombre de nœuds possibles | 254                 |

> Pour bien comprendre la notion de CIDR, il faut faire le parallèle avec la notion de département sur 2 ou 3 chiffres dans l'exemple du service postal.

### Configuration des nœuds

Pour communiquer sur le réseau, un nœud est le seul responsable de sa propre adresse sur le réseau.

- Lorsqu'il enverra un datagramme, il ajoutera dans les meta-données sa propre adresse comme adresse de retour
- Lorsque des datagrammes arrivent sur son sous-réseau, le nœud devra les réclamer au switch qui s'occupe de la distribution locale.

> Selon l'analogie avec le système postal, chaque commune connaît son propre code postal

Cela implique que l'administrateur système n'a pas le droit à l'erreur :

- Si l'administrateur donne au nœud une adresse qui ne correspond pas au réseau qui l'entoure, il ne recevra jamais de données
- Si l'administrateur donne la même adresse à 2 nœuds du même sous-réseau, les 2 nœuds réclameront les mêmes données et il est probable que chacun de ces nœuds ne reçoivent que des données tronquées

Heureusement il existe des techniques pour maintenir un réseau sans se tromper, comme par exemple le DCHP qui s'occupera de distribuer les adresses aux nouveaux arrivant sur le réseau.

Attention, certains appareils possèdent plusieurs cartes réseaux, chaque carte est considérée comme un nœud du réseau indépendant et c'est le système d'exploitation qui devra décider quand envoyer des paquets sur l'une ou l'autre carte.

### Configuration des switchs

Les switchs (ou **commutateurs**) n'ont par défaut aucune configuration. Ils se contente de distribuer localement les paquets à ceux qui les réclament grâce au **protocole ARP** (Address Resolution Protocol).

Fonctionnement de ARP :

1. Le switch reçoit un datagramme sur un de ces "port" (câble branché) à destination d'une adresse IP
2. Le switch envoie un message spécial à **tous** ces ports actifs pour demander à qui appartient l'adresse IP de destination
3. Le nœud qui possède cette adresse répond à la demande en se désignant lui-même (le nœud peut être un routeur si l'adresse appartient à un autre sous-réseau)
4. Le switch envoie le datagramme sur le câble de celui qui a répondu
5. Pendant un laps de temps défini, il va garder en mémoire cette association pour ne pas redemander trop souvent (on parle de **cache ARP**)

En réalité, les switchs modernes ont des configurations qui peuvent être plus complexes, comme par exemple la possibilité de créer des sous-réseaux virtuels étalés entre plusieurs switchs : les VLAN (Virtual Local Area Network)

> Selon l'analogie avec le système postal, les switchs sont les bureaux de distribution locaux, ils récupèrent les courriers des communes ou distribuent le courrier aux communes

### Configuration des routeurs

Un routeur ne connaît que les adresses des sous-réseaux qui se trouve derrière lui. Les autres sous-réseaux lui sont envoyés par les autres routeurs du réseau grâce à des protocoles spécifiques (comme BGP ou OSPF).

Dans ses tables de routages, il peut associer des poids ou calculer les meilleures routes ou s'adapter à la perte d'un autre routeur.

> Les table de routages correspondent aux tableaux de redirections dans l'analogie avec le système postal. Ils font le travail des bureaux de distribution lors du transfert de courrier vers un département limitrophe.

### Exemple complet

![Alt text](images/nsi_term_archi_rout_1.png)

## Conclusion

J’espère que l'analogie avec le système postal vous aura aider à comprendre comment un petit paquet de donnée arrive à trouver son chemin au travers d'Internet. Bien sûr il reste beaucoup de concepts que j'ai volontairement passé sous silence pour rester le plus compréhensible possible.

Normalement, à l'issue de cette lecture, vous devriez avoir ressenti un concept important caractéristiques aux réseaux IP et à Internet en particulier : vous devriez avoir mieux compris à quel point cette architecture est si solide grâce à l'absence d'autorité de contrôle central.
