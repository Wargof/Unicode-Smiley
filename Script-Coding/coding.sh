#!/bin/bash 

# Script générant le code HTML nécessaire à la création de l'extension Unicode Smiley.
# Coded by Wargof

# Source de codes Unicode : source_initial.txt
# Fichier de sortie : code.txt

# Exemple de la ligne à créer :
# '<p>&#128515 : &amp;#128515; &nbsp;&nbsp;&nbsp; &#128516 : &amp;#128516;</p>' 
# ou
# # '<p>&#128515 : &amp;#128515;</p>' 



### Mise en forme de source.txt

# Traitement du bloc

iconv -c -f utf-8 -t ascii source_initial.txt > source_initial_ascii.txt
# Suppression des caractères non-ascii pour enlever les Unicodes

#tr '   ' '\n' < source_initial_ascii.txt > source_initial_ascii2.txt
# Remplace les triples espaces par un retour à la ligne
# OLD - Replace by :
tr '\t' '\n' < source_initial_ascii.txt > source_initial_ascii2.txt
# Remplace les triples espaces par un retour à la ligne

sed -i "/^[ \t]*$/d" source_initial_ascii2.txt
# Supprime les lignes ne comportant que du vide,des espaces ou des tabulations

#cat source_initial_ascii2.txt | tr -d "\t" > source_initial_ascii3.txt
# Suppression des dernières tabulations

cat source_initial_ascii2.txt | tr -d '&' > source.txt
# Suppression des caractères &

rm source_initial_ascii.txt source_initial_ascii2.txt #source_initial_ascii3.txt
# Nettoyage des fichiers temporaires



# Prérequis fichier source.txt : 
#       Blocs de smileys de https://steemit.com/@blueorgy/steemit-emojis-master-list 
#       Tout les espaces remplacés par des retour à la ligne, une chaine de caractère par ligne.
#       Tout les '&'' supprimés


cat source.txt | sed '0~2d' > sourcepair.txt
cat source.txt | sed '1~2d' > sourceimpair.txt
# Récupère une ligne sur 2 de sorte à tout avoir divisé en deux

for line in $(cat sourcepair.txt);
do
    echo "<p>&$line : &amp;$line &nbsp;&nbsp;&nbsp; "
done > codepair.txt
# Extrait une ligne sur 2, les codes pairs

for line in $(cat sourceimpair.txt);
do 
    echo "&$line : &amp;$line</p>"
done > codeimpair.txt
# Extrait une ligne sur 2, les codes impairs

paste -d '' 'codepair.txt' 'codeimpair.txt' > 'code.txt'
# Fusion des lignes des 2 fichiers, les lignes de codepair.txt à gauche et celle de codeimpair.txt à droite

rm codeimpair.txt codepair.txt sourceimpair.txt sourcepair.txt source.txt
# Suppression des fichiers temporaires
