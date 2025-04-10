# **Unpopular opinion** : SSL/TLS Mutual Authentication est *moins* sécurisé qu'un mot de passe

Lors du developpement d'une application, on arrive souvent la question de l'authentification à un autre service (API, base de données, etc...).

Souvent, un des premiers réflexe est de se demander quel est le moyen le plus *sécurisé*. Et évidement quoi de mieux qu'utiliser la **cryptographie** pour s'authentifier ?

Pourquoi ne pas choisir systématiquement une authentification mutuelle SSL/TLS (mTLS) ?

* La cryptographie est mathématiquement sûre.
* Elle parait bien plus sécurisée qu'un mot de passe.
* Elle est déjà largement utilisée coté serveur, dans les navigateurs et les systèmes d'exploitation.

Je voudrais vous expliquer rapidement pourquoi c'est la plupart du temps une **fausse bonne idée**, voire que cela va **diminuer** la sécurité de votre application :

* Si la clef privée est un fichier, alors il a absolument le même niveau de sécurité qu'un mot de passe. En effet, un fichier peut-être copié sans que la victime ne s'en rende compte. Et s'il est protégé par un mot de passe, alors *il a le même niveau de sécurité que ce mot de passe*.
=> Il faut mieux mettre en place une gestion des clefs dans un hardware type **HSM** comme une YubiKey ou une SmartCard.

* Si le certificat ne peut pas être révoqué, alors il a le même niveau de sécurité qu'un mot de passe. En effet, si un certificat est volé, *on ne peut pas empêcher son utilisation par un attaquant*.
=> Il faut une infrastructure **resiliente** et **sécurisée** qui permet de diffuser les CRL ou un service OCSP

* Si le certificat n'est pas renouvelé régulièrement, alors il a le même niveau de sécurité qu'un mot de passe. Comme pour la rotation des mots de passe, il faut le renouveler régulièrement pour diminuer la fenêtre d'attaque.
=> Il faut une infrastructure **resiliente** et **sécurisée** qui permet de renouveler les certificats de façon régulière et automatisée.

* Si l'autorité de certification n'est pas fiable, alors il a un niveau de sécurité **inférieur** à un mot de passe. En effet, si l'autorité de certification est compromise, n'importe quel assaillant peut générer un certificat valide pour n'importe quel utilisateur.
=> Il faut une sécurité physique et organisationnelle pour protéger l'autorité de certification

* Un certificat doit certifier une identité. Croyez-le ou non, j'ai déjà rencontré des applications qui ne verifiaient pas l'identité de l'appelant, mais **uniquement la validité du certificat** !
=> Le code de l'application doit lire l'identité de l'appelant et l'utiliser pour vérifier ses droits. Et plus globalement, *les developpeurs doivent être solidement formés* à ce type d'authentification.


Maintenant, regardons rapidement les avantages d'un simple mot de passe :

* Le transit du mot de passe est **déjà sécurisé** par TLS coté *serveur* (https).
* Les outils de gestion de secrets permettent de gérer les mots de passe avec une sécurité du moindre privilège (**Least Privilege Principle**).
* La plupart des outils de gestion de secrets, implémententent une **rotation automatique** des mots de passe.
* Un mot de passe peut être tout simplement *changé* en cas de compromission.
* Globalement, les developpeurs maitrisent mieux les mots de passe que les certificats.

L'authentification mutuelle par certificat est probablement l'authentification la plus sécurisée qui existe. Mais si vous négligez le moindre détail, vous pouvez la rendre aussi faible qu'une authentification par mot de passe, voire **moins** sécurisée.

**Faîtes un choix en fonction de vos besoins, mais ne vous laissez pas tenter par la sensation de sécurité que procure l'utilisation de certificats.**