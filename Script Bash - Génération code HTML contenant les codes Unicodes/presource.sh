#!/bin/bash

# Mise en forme de source.txt
# Prérequis : 
#       Tout les espaces remplacés par des retour à la ligne, une chaine de caractère par ligne.
#       Tout les & supprimés

cat presource.txt | grep "#" > source.txt