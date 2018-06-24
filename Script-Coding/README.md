# Script générateur de code html pour Unicode Smiley

![Unicode-Smiley.png](https://framapic.org/lfNZKIQvgxmk/TePKkyLW7D52.png)


*Conçu par Wargof | https://steemit.com/@wargofosef .*

Script servant à traiter un bloc mixant des codes Unicodes de smileys ainsi que les smileys associé afin d'en générer le code HTML adéquat pour l'implémentation dans le code.


### Pré-requis

- Placer le bloc emoticones/code dans un fichier nommé source_initial.txt. Il ne doit rien avoir d'autres dans le fichier.

*Exemple de source.initial.txt :*
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

### Utilisation

- Coller le bloc à traiter dans le fichier source_initial.txt et exécuter le script coding.sh, le code HTML généré sera enregistré dans code.txt.
Le code n'a plus qu'a être implémenté dans le code HTML du popup de Unicode Smiley.


*Exemple de code HTML généré à partir du bloc précèdent :*

> <p>&#127744; : &amp;#127744; &nbsp;&nbsp;&nbsp; &#127745; : &amp;#127745;</p>
> <p>&#127746; : &amp;#127746; &nbsp;&nbsp;&nbsp; &#127747; : &amp;#127747;</p>
> <p>&#127748; : &amp;#127748; &nbsp;&nbsp;&nbsp; &#127749; : &amp;#127749;</p>
> <p>&#127750; : &amp;#127750; &nbsp;&nbsp;&nbsp; &#127751; : &amp;#127751;</p>
> <p>&#127752; : &amp;#127752; &nbsp;&nbsp;&nbsp; &#127753; : &amp;#127753;</p>
> <p>&#127754; : &amp;#127754; &nbsp;&nbsp;&nbsp; &#127755; : &amp;#127755;</p>
> <p>&#127756; : &amp;#127756; &nbsp;&nbsp;&nbsp; &#127757; : &amp;#127757;</p>
> <p>&#127758; : &amp;#127758; &nbsp;&nbsp;&nbsp; &#127759; : &amp;#127759;</p>
> <p>&#127760; : &amp;#127760; &nbsp;&nbsp;&nbsp; &#127761; : &amp;#127761;</p>
> <p>&#127762; : &amp;#127762; &nbsp;&nbsp;&nbsp; &#127763; : &amp;#127763;</p>
> <p>&#127764; : &amp;#127764; &nbsp;&nbsp;&nbsp; &#127765; : &amp;#127765;</p>
> <p>&#127766; : &amp;#127766; &nbsp;&nbsp;&nbsp; &#127767; : &amp;#127767;</p>
> <p>&#127768; : &amp;#127768; &nbsp;&nbsp;&nbsp; &#127769; : &amp;#127769;</p>
> <p>&#127770; : &amp;#127770; &nbsp;&nbsp;&nbsp; &#127771; : &amp;#127771;</p>
> <p>&#127772; : &amp;#127772; &nbsp;&nbsp;&nbsp; &#127773; : &amp;#127773;</p>
> <p>&#127774; : &amp;#127774; &nbsp;&nbsp;&nbsp; &#127775; : &amp;#127775;</p>
> <p>&#127776; : &amp;#127776; &nbsp;&nbsp;&nbsp; 