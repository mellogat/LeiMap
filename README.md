# LeiMap

Application pour un client :

Organisateur de conférences, sujets variées

Application pour les invités,

Elle affiche une carte, avec des autres invités de la conférences sur différents endroits

On appuie un bouton pour dire ou je suis (check in, check out)

Liste des gens dans un endroit (Les gens ont une bio)

Lien moqups : https://app.moqups.com/Z00Xku2uEImMS2Er6o0eDV8ve7HT7DrN/edit/page/a06bd6dd7

API de carte? MapKit

Modèle :

Participant (Nom, Email, Mot de Passe, Biographie)
Lieu (Nom, Adresse, Image, liste des participants actuel au lieu, location(Apple MapKit))
Coté Serveur (Otto) :

Serveur PHP REST API
Database
Requêtes : (Soit https://… comme adresse source)

Voir tout les participants : GET /participants/
Voir tout les participants dans un lieu : GET /lieu/$[id]/participants
Récupérer les infos d’un participant : GET /partcipant/$[id]
Coté Client (Arona) :

Menu de Login
Bottom TabView
View carte avec annotations (pourvoir appuyer sur les icones sur la carte) (distance par rapport à une icone)
Profile
Détail sur une conférence
(Après V1 :)

Possibilité de faire de Nouveau Compte
Profil Privée ou Publique (s’affiche pas sur la liste et la carte)
Possibilité de de se rajouter ou se retirer d'une conférence (donc avoir un menu si conf == null)
