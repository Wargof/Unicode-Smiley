#!/bin/bash 

# Script générant le code HTML nécessaire à la création de l'extension Unicode Smiley.
# Coded by Wargof

# Source de codes Unicode : source.txt
# Fichier de sortie : code.txt

# Prérequis fichier source.txt : 
#       Blocs de smileys de https://steemit.com/@blueorgy/steemit-emojis-master-list 
#       Tout les espaces remplacés par des retour à la ligne, une chaine de caractère par ligne.
#       Tout les '&'' supprimés

cat presource.txt | grep "#" > source.txt

# Exemple de la ligne à créer :
# '<p>&#128515 : &amp;#128515; &nbsp;&nbsp;&nbsp; &#128516 : &amp;#128516;</p>' 
# ou
# # '<p>&#128515 : &amp;#128515;</p>' 



rm code.txt && touch code.txt       # Suppression et recréation de code.txt


for line in $(cat source.txt);      # Pour chaque ligne de 'source.txt'
do 
    echo "<p>&$line : &amp;$line</p>";
done >> code.txt
