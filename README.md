 

  
![[Pasted image 20230323104132.png]]
Table des matières

[Introduction. 2](#_Toc128776472)

[Composition de la Team.. 2](#_Toc128776473)

[Membres. 2](#_Toc128776474)

[Emilie Dorer : 2](#_Toc128776475)

[Lya BelaBbas. 2](#_Toc128776476)

[Benoît Saturnin. 2](#_Toc128776477)

[Avancement du projet 3](#_Toc128776478)

[Technologies utilisées. 4](#_Toc128776479)

[Problèmes rencontrés. 4](#_Toc128776480)

[Conception base de donnée. 5](#_Toc128776481)

[Nomenclature. 5](#_Toc128776482)

[Table. 5](#_Toc128776483)

[Attribut 5](#_Toc128776484)

[Problèmes rencontrés. 5](#_Toc128776485)

[MCD. 6](#_Toc128776486)

[MLD. 6](#_Toc128776487)

[FrontEnd. 7](#_Toc128776488)

[Page d’accueil 7](#_Toc128776489)

[Graphisme. 10](#_Toc128776490)

[Captcha. 10](#_Toc128776491)

[Flux RSS. 10](#_Toc128776492)

  

# Introduction

Notre projet va consister à créer un site web de commerce en ligne qui proposera l’achat ainsi que la personnalisation de grille-pain.

Nous aurons une partie Frontend dédiée aux clients et une partie Backend pour les administrateurs afin de gérer le site Web. Le tout sera lié avec une base de données afin de stocker les informations nécessaires au bon fonctionnement du site.

# Composition de la Team

Notre équipe sera composée de 3 personnes pour la réalisation de ce projet.

## Membres

Nous avons défini équitablement des rôles et des responsabilités à chaque membre de l’équipe.

### Emilie Dorer :

**Rôles** :

1.     Configuration de la base de données

2.     Editrice n°1 pour la documentation

**Responsabilité** :

Madame Dorer sera la référente pour la partie du Code en PHP

### Lya BelaBbas

**Rôles** :

1.     Codeuse pour la partie Frontend

2.     Editrice n°2 pour la documentation

**Responsabilité** :

Madame Belabbas sera la référente pour toute la partie concernant la base de données.

### Benoît Saturnin

**Rôles** :

1.     Codeur pour la partie Backend

2.     Concepteur des schémas pour la base de données

**Responsabilité** :

Monsieur Saturnin sera le répondant pour toute la partie de la documentation du projet. Il a également été décidé que c’est lui qui fera toutes les remises des documents sur Moodle le vendredi

Il aura également la casquette de Chef de projet au sein du groupe.  

# Avancement du projet

Voici en bref les points que nous devons et avons fait au sein du projet :

Obligations générales :                                            jaune = non fait                      bleu = en cours                       vert = Fait

-        Structogramme Nassi-Schneidermann ou autre.

-        MCD – MLD - MPD.

-        Répartition du travail

-        Conventions de nommages pour les variables

-        Commentez votre code

-        Feuilles de style CSS (bootstrap)

-        Gestion de votre base MySQL se fait via des appels mysqli ou PDO

-        Votre site doit être créé en mode MVC

-        Une arborescence logique

-        Impression de commande, une mise en page adaptée et différente de l’affichage web

-        Utiliser un salt

-        Sécurisez les champs texte contre les injections SQL

Partie Publique :

-        Voir les articles et de les mettre dans son panier

-        Mettre en place un flux RSS afin de suivre les nouveaux articles

-        Lorsqu’un article sera mis dans le panier, le client sera obligé de créer son compte

o   Les informations du compte doivent correspondre à la réalité

o   Contrôler les champs lors des créations de comptes, articles et autres

(Ex. ne pas mettre de numéro dans un champ Nom)

o   Afin d’éviter le spam, un système de CAPTCHA devra être utilisé lors

D’un nouveau compte

Partie Client :

-        Le client pourra modifier son profile (mdp, adresse, etc.)

-        Voir ses commandes (passées et actuelles ainsi que l’état de ses commandes)

-        Sélectionner des articles et les ajouter au panier et passer une commande.

-        Le client pourra commenter un article afin de partager son avis

-        Afin d’éviter le spam, un système de CAPTCHA devra être utilisé lors

D’un nouveau commentaire

-        Chaque commentaire affichera l’heure, la date et le nom de l’auteur

Partie admin :

-        Gérez les articles (ajouter, supprimer, modifier, etc.)

-        Gérez les commandes (reçue, en attente, envoyée, etc.)

-        Gérez les clients (activation, désactivation, coordonnées, adresse IP, etc.)

-        Gérez les administrateurs (accès multiples simultanés)

-        Gérez les commentaires (suppression des commentaires indésirables, etc.)  

# Technologies utilisées

·       Xampp 8.2

·       HTML/CSS

·       FrameWork Laravel

o   Laravel 9

o   Livewire

o   JetStream

o   Node.js

·       Visual Studio Code

·       Gantt Project

·       GitHub

o   Travail en groupe sur le code source du projet

·       Discord

o   Partage de source et information

o   Discussion, réunion

·       OneDrive

o   Partage de documents et édition multiple

## Problèmes rencontrés

1.     Lors de l’installation des versions 8.0 et supérieur de PHP, nous avons eu un message d’erreur sur nos serveur uWamp. En recherchant le problème sur les forums, nous avons corrigé le problème à l’aide de cette vidéo :

[https://www.youtube.com/watch?v=de1jseSa0bI&ab_channel=noPB](https://www.youtube.com/watch?v=de1jseSa0bI&ab_channel=noPB)

Merci à son auteur.

2.     Émilie a rencontré des problèmes à l’installation de uWamp.

Émilie utilisera un Mamp serveur car uWamp n’est pas compatible avec Mac

3.     Nous nous sommes aperçus qu’il y avait beaucoup de tutoriels sur YouTube afin de développer un site e-commerce avec Laravel mais que ces derniers exigeaient beaucoup d’autres FrameWork qui nécessite un apprentissage de notre part et créent des dépendances.

Après grandes recherches, réflexion et discussion, nous avons décider de prendre chacun et chacune un tutoriel différent pour créer une page de gestion administrateur, de citer les pours et les contres du tutoriel et de comparer le résultat final obtenu. Suite à quoi nous choisiront le tutoriel que nous allons suivre et nous partagerons le travail.

Comme cela, nous aurons toutes et tous une expérience sur le FrameWork et pourront continuer d’avancer à la construction du site.

  

# Conception base de donnée

Nous avons créé notre propre schéma afin de pouvoir exploiter les fonctions de notre site au maximum. Nous avons utilisé l’application JMerise afin de nous générer les divers schémas de base de données.

Les schémas présentés ci-dessous ne sont pas encore définitifs. Nous les validerons lors de notre prochaine rencontre à l’EPSIC.

## Nomenclature

Afin de structurer au mieux notre travail et ainsi augmenter l’efficacité en cas de changement ou d’amélioration de notre système, nous avons mis en place un plan de nommage des tables et des attributs de notre base de données.

### Table

Le nom des tables sont établies comme suit :

-        t_nom_de_la_table

o   ex. : t_client, pour la table qui contient les informations des clients.

### Attribut

Le nom des attributs sont établies comme suit :

-        nom_client, pour le champ concernant le nom du client

#### Spécialité

Afin de faciliter la mise en place de notre système, nous avons réduit la longueur de l’attribut pour l’id. En effet, étant donné que la plupart des requêtes seront effectuées en lien avec les id des différentes tables, nous, avons décidé de raccourcir cet élément. Voici comment il se nomme :

-        id_3_premières_lettres_de_la_table

o   ex. : id_cli (pour l’id des client), id_fac (pour id des factures), etc…

## Problèmes rencontrés

1.     Lors de la génération du MPD à partir du MLD, l’application n’a pas fait correctement la conversion et a oublié les index pour les tables intermédiaires.

Nous allons donc devoir les faire manuellement.

2.     Nous avons créé une base de données pour notre site E-commerce. Cette base de données ne sera pas utilisée pour le projet car le FrameWork Laravel possède des fonctions intéressantes pour la création et la migration de table de donnée.

Nous avons préféré utiliser les modèles proposé par le FrameWork à des fin de compatibilité. Il n’en reste pas moins que cela a été un très bon exercice afin de nous remémoré le module 100 et 104 concernant les base de données.

  

3.      

Les deux schémas ont été validé par l’équipe. Un attribut time_avis a été rajouté pour la date du commentaire

## MCD

![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image003.png)

## MLD

![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image004.png)  

# FrontEnd

Pour la partie FrontEnd, nous allons partir sur un thème Bootstrap, ou CSS, en essayant de nous rapprocher le plus possible de l’esthétique d’un grille-pain.

## Page d’accueil

Voici un petit aperçu de notre site internet. Nous apporterons des modifications selon les idées et le temps que nous avons à disposition. Nous allons tout de même nous focaliser sur le fait de rendre noter site fonctionnel et nous ferons les petites fantaisies après, si nous avons encore le temps.

Sur le haut de la page, nous aurons une image simple avec un défilement d’image de nos articles phares avec 2 flèches afin de les parcourir. La Navbar apparaîtra seulement une fois que nous voulons défiler vers le bas du site.  Lya se chargera de refaire une maquette avec les derniers changements que nous avons opéré.

![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image005.png)![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image006.png)  

![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image007.png)![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image008.png)![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image009.png)

![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image010.png)

## Graphisme

Nous avons choisi le thème que nous voulons pour notre site Web. Il s’agit du thème Quartz de Bootswatch disponible [ici.](https://bootswatch.com/quartz/)

Afin de garantir au maximum la compatibilité du projet, nous ferons la partie "Graphique" à la fin si le temps nous le permet.

## Captcha

Le CAPTCHA est une mesure de sécurité de type « authentification par question-réponse ». Cette mesure permet de protéger votre compte du spam et d'empêcher toute tentative de décryptage de votre mot de passe en vous soumettant à un test simple visant à vérifier que c'est bien un humain et non un ordinateur qui tente d'accéder au compte.  
Un test CAPTCHA est constitué de deux parties : une séquence aléatoire de lettres et/ou de chiffres qui apparaissent de manière déformée, et une zone de texte. Pour réussir le test, il vous suffit de saisir les caractères de l'image dans la zone de texte.

Nous le configurerons pour la création du compte et l’ajout d’un avis.

## Flux RSS

Un flux permet d'être informé automatiquement des modifications d'une source de donnée. On peut donc dire qu'un flux est une page web mais dans un autre format qui contient des dates de publication et de modification qui est lisible plus facilement par les robots que le XHTML.

# BackEnd

Nous avons commencé à créer la partie d’administration de notre site. Voici un petit aperçu da la page de gestion.

![](file:////Users/dorer/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image011.png)
