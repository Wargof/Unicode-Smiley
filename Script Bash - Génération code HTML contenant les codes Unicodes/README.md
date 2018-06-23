# Script générateur de code html pour Unicode Smiley

<center>
![Unicode-Smiley.png](https://framapic.org/lfNZKIQvgxmk/TePKkyLW7D52.png)
</center>

*Conçu par Wargof | https://steemit.com/@wargofosef .*

Script servant à traiter un bloc mixant des codes Unicodes de smileys ainsi que les smileys associé afin d'en générer le code HTML adéquat pour l'implémentation dans le code.

*Extrait du bloc de codes ( bloc venant de [steemit.com/@blueorgy](https://steemit.com/@blueorgy/steemit-emojis-master-list) ):*

> 🌀 	&#127744; 	🌁 	&#127745; 	🌂 	&#127746;
> 🌃 	&#127747; 	🌄 	&#127748; 	🌅 	&#127749;
> 🌆 	&#127750; 	🌇 	&#127751; 	🌈 	&#127752;
> 🌉 	&#127753; 	🌊 	&#127754; 	🌋 	&#127755;
> 🌌 	&#127756; 	🌍 	&#127757; 	🌎 	&#127758;
> 🌏 	&#127759; 	🌐 	&#127760; 	🌑 	&#127761;
> 🌒 	&#127762; 	🌓 	&#127763; 	🌔 	&#127764;
> 🌕 	&#127765; 	🌖 	&#127766; 	🌗 	&#127767;
> 🌘 	&#127768; 	🌙 	&#127769; 	🌚 	&#127770;
> 🌛 	&#127771; 	🌜 	&#127772; 	🌝 	&#127773;
> 🌞 	&#127774; 	🌟 	&#127775; 	🌠 	&#127776;

*Aperçu du résultat final requis :*

> <p>&#127744; : &amp;#127744;</p>
> <p>&#127745; : &amp;#127745;</p>
> <p>&#127746; : &amp;#127746;</p>
> <p>&#127747; : &amp;#127747;</p>
> <p>&#127748; : &amp;#127748;</p>
> <p>&#127749; : &amp;#127749;</p>
> <p>&#127750; : &amp;#127750;</p>
> <p>&#127751; : &amp;#127751;</p>
> <p>&#127752; : &amp;#127752;</p>

## Pré-requis

- Chaque chaîne de caractère sur une ligne différente ( Faire un rechercher/remplacer afin de transformer les espaces en retour à la ligne ).
- Suppression des caractères '&' des codes Unicodes ( faire rechercher/remplacer pour remplacer les & en rien ).

### Traitement des blocs

- Coller le bloc à traiter dans le fichier presource.txt et exécuter le script presource.sh, le résultat sera enregistré dans source.txt.
- Une fois le fichier source.txt prêt, exécuter le script coding.sh, le code HTML sera généré et enregistré dans le fichier code.txt. 

