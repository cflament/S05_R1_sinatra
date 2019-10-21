Welcome Correcteur

Bienvenu dans mon application !
Elle va te permettre d'emettre et d'éditer des potins sur une plateforme.

/!\Avant toute chose, je dois te préciser que je suis obligée de travailler avec une version de rugby 2.6.3 donc comme ce n'est pas la version de THP, tu devras sans doute modifier mon Gemfile pour pouvoir faire tourner mon application, tu peux le remplacer avec les lignes suivantes : 
source "https://rubygems.org"
ruby '2.6.3'
gem 'sinatra'
gem 'shotgun'
gem 'pry'

Ce petit réglage fait, tu pourras commencer ! 
Pour ce faire, entre dans le repo via ton terminal, et nous allons utiliser un serveur local pour que tu puisses visualiser l'application Sinatra s'exécuter directement sur des pages html !

Depuis mon repo dans ton terminal, execute les commandes suivantes : 
$ bundle install
$ shotgun -p 4567

Puis lance https://localhost:4567/ et tu arriveras sur la page d'accueil de l'applicaion.
Dans un design ma foi très minimaliste, tu devrais pouvoir : 
- créer un nouveau potin
- visiter les pages potins
- editer les potins depuis les pages potins

Bonne navigation !

