# Comprendre le réseau quand on y connait vraiment rien

- [Comprendre le réseau quand on y connait vraiment rien](#comprendre-le-réseau-quand-on-y-connait-vraiment-rien)
  - [Notions couvertes](#notions-couvertes)
  - [L'analogie de la remise de courrier](#lanalogie-de-la-remise-de-courrier)

## Notions couvertes

Le but de cet article est de comprendre les notions fondamentales d'un réseau TCP/IP.

- IP
- CIDR
- BGP
- TCP

## L'analogie de la remise de courrier

Pour comprendre la remise d'un paquet d'un ordinateur à un autre, nous pouvons le comparer à la remise d'un courrier par le service postal.

Nous allons imaginer la mise en place d'un service postal fictif à l'échelle de la France et tracer un historique des optimisations pour enfin le calquer à un réseau TCP/IP.

Imaginons une personne qui doit envoyer un courrier depuis Bordeaux vers Amiens. Pour simplifier l'analogie, nous allons simplement considérer la remise de courrier entre deux villes. Sur l'enveloppe au départ de Bordeaux, nous indiquons simplement le code postal de la ville de destination, et au dos nous écrivons notre propre code postal pour que le destinataire puisse nous répondre.


Coordonnées
|             | Destinataire | Expéditeur             |
| ----------- | ------------ | ---------------------- |
| Ville       | Démuin       | Saint-Médard-en-Jalles |
| Code postal | 80110        | 33160                  |

