# Comprendre le réseau quand on y connait vraiment rien

- [Comprendre le réseau quand on y connait vraiment rien](#comprendre-le-réseau-quand-on-y-connait-vraiment-rien)
  - [Notions couvertes](#notions-couvertes)
  - [L'analogie de la remise de courrier](#lanalogie-de-la-remise-de-courrier)
    - [Hypothèses de départ](#hypothèses-de-départ)
    - [Algorithme de remise de courrier primitif](#algorithme-de-remise-de-courrier-primitif)
    - [Algorithme de courrier amélioré](#algorithme-de-courrier-amélioré)
    - [Algorithme de routage du courrier](#algorithme-de-routage-du-courrier)

## Notions couvertes

Le but de cet article est de comprendre les notions fondamentales d'un réseau TCP/IP.

- IP
- CIDR
- BGP
- TCP

## L'analogie de la remise de courrier

### Hypothèses de départ

Pour comprendre la remise d'un paquet d'un ordinateur à un autre, nous pouvons le comparer à la remise d'un courrier par le service postal.

Nous allons imaginer la mise en place d'un service postal fictif à l'échelle de la France et tracer un historique des optimisations pour enfin le calquer à un réseau TCP/IP.

Imaginons une personne qui doit envoyer un courrier depuis Bordeaux vers Amiens. Pour simplifier l'analogie, nous allons simplement considérer la remise de courrier entre deux villes avec leurs codes postaux respectifs. Le courrier doit d'abord être déposé dans la boite au lettre de la ville où il sera pris en charge par le système postal qui sera en charge de l'acheminer dans la boite au lettre de la ville de destination.

Sur l'enveloppe au départ de Bordeaux, nous indiquons simplement le code postal de la ville de destination, et au dos nous écrivons notre propre code postal pour que le destinataire puisse nous répondre.

Exemple de courrier à envoyer :

|              | Ville                  | Code postal |
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

Avec cet algorithme, il faut effectuer autant de trajet qu'il y a de courrier à remettre. Dans le cadre de l'analogie un réseau câblé, cela signifierai qu'il faut établir des câbles réseaux entre chaque villes de la carte, soit pour $N$ villes, nous aurions besoin de $N^N$ câbles.

### Algorithme de courrier amélioré

Pour optimiser la remise de nos courriers, nous allons découper la France en départements, et chaque département disposera d'un "bureau distributeur" en charge de récupérer tous les courriers en partance de son département. Pour faciliter la numérotation, la ville du bureau distributeur aura un code postal un peu spécial composé du numéro du département puis de `000`.

Une fois le courrier au bureau distributeur, il existe 2 choix :

- Si le destinataire est dans le même département, alors le courrier lui est directement remis
- Si le destinaitaire est dans un autre département, alors le courrier est remis au bureau distributeur du département dans lequel se trouve le destinataire.

Avec ces nouveaux éléments, l'algorithme est modifié:

1. Je met l'enveloppe dans la boite aux lettres de Saint-Médard-en-Jalles
2. Un facteur récupère l'enveloppe et la transporte jusqu'au bureau distributeur du département
1. Un facteur récupère l'enveloppe au bureau distributeur
2. Mon destinataire récupère l'enveloppe dans la boite aux lettres de Démuin

Voici le nouveau trajet effectué par le courrier :

![Alt text](images/saint-medart-demuin-prefecture.jpg)

Voici la liste des nouveaux codes postaux maintenant impliqués :

|                     | Ville                  | Code postal |
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

Dans l'analogie avec un réseau câblé, le bureau distributeur est appelé un *concentrateur*. Dans un réseau moderne, c'est l'appareil appelé *switch*.

Bien que nous ayons déjà optimisé notre système postal, il reste encore à trouver une optimisation pour acheminer le courrier entre chaque bureau distributeur. en effet, dans l'état actuel de notre algorithme, pour $M$ bureau distributeur, nous aurions besoin de $M^M$ câbles pour relier tous les bureau distributeurs entre eux.

### Algorithme de routage du courrier

Dans cette dernière itération, nous allons maintenant considérer que les bureaux distributeurs ne peuvent remettre du courrier uniquement aux bureaux distributeurs des départements limitrophes