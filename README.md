# exam_blockchain

Sujet : Traçabilité des pneus

## Analyse

### Questionnement sur le besoin de traçabilité des pneus :
    - Quels sont les besoins de traçabilité en matière de sécurité routière ?
    Identification des acteurs en cas d’accident, garantie de la qualité des pneus, respect des normes et reglementations...

    - Quels sont les besoins de traçabilité en matière de développement durable ?
    Recyclage des pneus, protection de l’environnement (ex: recyclage des pneus, rechapage), coûts environnementaux de la logistique des pneus...

    - Quels sont les besoins de traçabilité de la chaîne de production et de distribution de pneus ?
    Identification des acteurs en cas de contrefaçon ou de malfaçon

    - Quels sont les besoins de traçabilité en matière de maintenance ?
    Suivi de l’usure des pneus, ex: si revente entre particuliers -> information de rechapage ou non

### Potentiel de la technologie blockchain pour résoudre les différentes problématiques :
    Identification des acteurs en cas d’accident : informations sur les acteurs ayant participé à la production, la distribution, la maintenance et le recyclage des pneus
    Garantie de la qualité des pneus : informations sur les normes et réglementations respectées, les contrôles qualité effectués
    Respect des normes et reglementations : informations sur les normes et réglementations respectées
    Recyclage des pneus : informations sur le recyclage des pneus, les coûts environnementaux de la logistique des pneus
    Suivi de l’usure des pneus : informations sur l’usure des pneus, les opérations de maintenance effectuées (ex: rechapage)

### Identification des acteurs de la chaîne des pneus et de leurs attentes :
    - Fabricants : production de pneus fiables avec le moins de coûts et de déchets possibles
    - Distributeurs : livraison des pneus dans les délais, coûts de stockage
    - Centres de montage : qualité de la maintenance des pneus, coûts de stockage
    - Clients : qualité des pneus, coûts de maintenance
    - Recycleurs : recyclage des pneus, coûts environnementaux de la logistique des pneus

    Acteurs de la chaîne de production : Fabricants de pneus, fournisseurs de matières premières
    Acteurs de la chaîne de distribution : Grossistes, détaillants
    Acteurs de la chaîne de maintenance : Centres de montage, garages
    Acteurs de la chaîne de recyclage : Recycleurs, centres de recyclage

    Risques et contraintes : identification des acteurs en cas d’accident, garantie de la qualité des pneus, respect des normes et reglementations, recyclage des pneus, suivi de l’usure des pneus (ex: si revente entre particuliers -> information de rechapage ou non), protection de l’environnement, coûts environnementaux de la logistique des pneus, coûts de stockage, coûts de maintenance, coûts de production, coûts de recyclage

## Modélisation

### Définition des participants de la blockchain
    - Fabricants de pneus
    - Fournisseurs de matières premières
    - Grossistes
    - Détaillants
    - Centres de montage
    - Garages
    - Recycleurs
    - Centres de recyclage

### Définition des actifs de la blockchain et des attributs associés
    - Pneus : marque, modèle, dimension, date de fabrication, date de livraison, date de montage, date de maintenance, date de recyclage
    - Matières premières : fournisseur, date de livraison, date de production
    - Contrôles qualité : date, type de contrôle, résultat du contrôle
    - Normes et réglementations : date, type de norme ou réglementation, respect ou non
    - Usure des pneus : date, kilométrage, type de maintenance effectuée
    - Recyclage des pneus : date, type de recyclage, coûts environnementaux

### Définition des transactions de la blockchain
    - Enregistrement de la fabrication d'un pneu : Fabricant de pneus, fournisseur de matières premières, date de fabrication, contrôles qualité effectués, normes et réglementations respectées
    - Transfert de propriété : Grossiste, détaillant, date de livraison, date de montage
    - Montage sur un véhicule : Centre de montage, garage, date de montage, date de maintenance, usure des pneus
    - Recyclage des pneus : Recycleur, centre de recyclage, date de recyclage, type de recyclage, coûts environnementaux

## Programmation blockchain

### Utilisation de la plateforme Ethereum pour la création de la blockchain
    - Utilisation de Remix IDE pour le développement des smart contracts
    - Utilisation de OpenZeppelin Wizard et de leurs librairies pour la création des smart contracts

### Développement de smart contracts en utilisant le langage Solidity et la librairie OpenZeppelin
Pour des raisons de maintenabilité et de taille nous aurions pu découper le smart contract en plusieurs :
    - Création d'un smart contract pour l'enregistrement de la fabrication d'un pneu : makeTire (MKTR)
    - Création d'un smart contract pour le transfert de propriété : transferTire (TRTR)
    - Création d'un smart contract pour le montage sur un véhicule : mountTire (MOTR)
    - Création d'un smart contract pour le recyclage des pneus : recycleTire (RCTR)

Mais pour des raisons de simplicité et de rapidité nous avons décidé de regrouper toutes les fonctionnalités dans un seul smart contract : TireChain (TRCH) sous forme de NFT (Non Fungible Token)

### Utilisation de Remix IDE pour le déploiement et le test des smart contracts
    - Déploiement des smart contracts sur Holesky

## Design blockchain

### Définition de la structure de la blockchain
    - Blocs contenant les transactions de la blockchain
    - Transactions contenant les informations sur les pneus, les matières premières, les contrôles qualité, les normes et réglementations, l'usure des pneus, le recyclage des pneus
    - Blockchain privée pour garantir la confidentialité des données

### Choix du mécanisme de consensus : Proof of Authority (PoA)
    - Rapidité des transactions (pas de problèmes mathématiques à résoudre)
    - Finalité des blocs (pas de forks possibles)
    - Blocs validés par des autorités (sécurité et fiabilité)

### Définition de la structure des blocs et de la finalité
    - Blocs contenant les transactions de la blockchain
    - Finalité des blocs assurée par les autorités

### Utilisation de la technologie IPFS pour le stockage décentralisé des données volumineuses (images, documents, etc.)
    - Stockage des images des pneus, des contrôles qualité, des normes et réglementations, des opérations de maintenance, des opérations de recyclage

## Code / avancement
Voir le code réalisé dans le dossier "smart_contracts" de ce repository
Lien du smart contract déployé sur Holesky : https://holesky.etherscan.io/address/0xcff98ba32e4b8fe5a67fddcd3775de962b62e3a7

## Conclusion
Le NFT est bien déployé sur la blockchain Holesky, il est possible de le voir sur le lien ci-dessus. Il est possible de voir les transactions effectuées sur le NFT. Mais il y a des erreurs dans les fonctions mint et transfer, il est impossible de les utiliser. Il faudrait donc les corriger pour que le NFT soit pleinement fonctionnel.