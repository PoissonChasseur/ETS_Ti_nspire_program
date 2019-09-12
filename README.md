# ETS_Ti_nspire_program
- Programs for calculators "Ti nspire cx cas" for some courses of ETS university.
- Quelques programmes pour la calculatrice "Ti nspire CX CAS" pour certains cours de l'ÉTS (École de Technologie Supérieure)

Note : Les programmes seront ajoutés prochainement suite à la création de ce projet.

Mise en contexte et description du projet :
-
Dans le cadre de mon baccalauréat [universitaire] en génie électrique, plusieurs programmes ont été faits sur la calculatrice "Ti nspire CX CAS" pour aider à plus rapidement et facilement réussir les examens. J’ai eu une moyenne de A (principalement des A-, A et A+) au travers de toute le BAC et j’ai donc souhaité partager ces programmes pour potentiellement aider les autres.

La plupart de ces programmes ont été faits durant les sessions de chacun de ces cours afin d’aider à éviter d’avoir à refaire les manipulations de certaines démarches mathématiques à chaque fois durant les examens et en faisant les exercices pour étudier. Malgré le fait qu’ils ont été testés sur des exercices, puis utilisés durant des examens, il ne faut jamais oublier qu’il est possible qu’il y ait des erreurs ou des cas spéciaux qui n’avaient pas été gérer ou tout simplement pas vu durant la session de cours où le programme a été fait. Dans un tel cas, vous êtes invité à vous-même les améliorer, en fonction de vos besoins.

Les programmes ont surtout été faits pour des cas où l’on doit toujours faire le même type de démarche et donc, tous les cas possibles qu’on pourrait avoir à l’examen ne sont pas nécessairement couverts. De la même façon, si certains calculs sont beaucoup trop faciles et donc, ils sont plus simples à faire à la main, ceux-ci ne nécessitent pas vraiment de programme juste pour ça. Dans certains cas, il peut également être plus simple de plutôt faire une petite fonction à l’aide de l’opérateur ":=". Ex : "f(x,y) := x + y".

En général, ma philosophie a été : si la démarche est répétitive et qu’elle peut s’automatiser pour résoudre (partiellement ou entièrement) certains problèmes spécifiques, alors on peut le programmer.

À noter également que les programmes ont été faits dans un but de reproduire la démarche qui était faite à la main. En conséquence, ceux-ci ne sont probablement absolument pas optimaux au niveau de leur façon de faire les calculs. Le but étant d’avoir un programme qui donne la démarche complète qu’on peut ensuite écrire à l’examen pour faire comme si on l’avait fait à la main comme les autres élèves.


Recommendations
-
Il est fortement suggéré de toujours tester les programmes avant les examens et prendre conscience des forces et limitations de ceux-ci avant de les utiliser. La qualité des programmes peut varier en raison de l’évolution des connaissances sur la programmation de ce genre de programme (ex. 1re session vs dernière session) et de certains choix par rapport au format qui semblait le plus approprié pour faire les faires.

Soutien technique et quelques conseils pour la programmation et l’utilisation de la calculatrice  
-
Étant donné que j’ai déjà terminé mon BAC à l’ÉTS, il est malheureusement très peu probable que j’apporte une quelconque aide technique par rapport aux programmes qui normalement devraient être relativement complets et fonctionnels étant donné qu’ils ont tous été utilisés dans des examens. Si certains trucs sont manquants pour votre cas ou que vous avez des idées de truc à ajouter, vous êtes fortement encouragé à vous-mêmes vous y mettre et apprendre, comme j’ai fait, a programmé sur la calculatrice. J’ai personnellement entièrement appris par moi-même à programmer cela au travers de recherche et de quelques connaissances acquises au travers des cours. Cependant, la plupart des profs ne connaissent absolument rien dans cela et beaucoup de trucs sur Internet sont vraiment de trop bas niveau (trop simple) pour être utile pour des cas complexes.

Liste de quelques trucs pour la programmation sur la calculatrice:
  - Pour programmer plus efficacement, utiliser le logiciel à l’ordinateur. Bien que la programmation directement sur la calculatrice soit faisable (ex. à l’examen), c’est vraiment beaucoup plus simple de le faire à l’ordinateur.
  - Puisque la calculatrice n’a pas de "debuger", dans le cas de programme ou algorithme relativement complexe, il peut être plus simple de commencer par le programmer sur Matlab (ou un autre langage), afin d’ensuite manuellement transférer le code sur la calculatrice. Cela peut notamment permettre de sauver beaucoup de temps de débogage et peut être très utile dans le cas où vous avez relativement peu de temps pour programmer.
  - La calculatrice ne permet pas de faire des matrices 3D (limité au 1D ou 2D). Cependant, j’ai pu faire du 3D notamment pour ELE747 (conversion de format de couleur) en utilisant une matrice 2D qui contient des strings où chaque valeur est séparée par des virgules. Si l’on a besoin de plus que 3 dimensions, on peut même encapsuler plusieurs strings l’une dans l’autre ou (par ex.) mettre des listes dans des strings. Les strings peuvent donc aider à faire plusieurs encapsulons pour dépasser les limitations de la calculatrice sur le nombre de dimensions pour représenter des données.
  - Utilisez plusieurs "activités" pour séparer par thèmes/sujets vos fonctions et programmes. Cela va vous aider à plus facilement trouver les fonctions que vous avez besoins rendus à l’examen en évitant d’avoir une très longue liste de fonctions & programmes à la fin.
  - Au début de vos fonctions et programmes, ajoutez des vérifications des types des paramètres reçus et tout autre truc de "sécurité", pour éviter qu’à l’examen vous ayez des erreurs que vous ne comprenez pas (à cause du stress). Vous pouvez notamment pour cela regarder ce qui a déjà été fait dans plusieurs programmes (ex. celui d’ELE735).
  - Dès que vous avez un cours qui permet d’utiliser la calculatrice, n’oubliez pas que la calculatrice peut servir de feuilles de note supplémentaire ! Bien que cela puisse être un peu "buggué" et pas vraiment fluide, cela reste une façon de faire si vous avez besoin de plus de place que ce qui est permis OU qu’aucune feuille de note ne soit permise pour l’examen (mais la calculatrice est autorisée). Encore là, faites attention pour vous assurer que le rendu final sera lisible. Les feuilles "Éditer mathématique" sont idéales pour cela.
  - TOUJOURS avoir au moins testé une fois vos fonctions et programmes sur la calculatrice (et non juste à l’ordinateur) pour vous assurer que le temps d’exécution est relativement correct et que la calculatrice y arrive: on ne veut pas que cela "plante" rendu l’examen !
  - Tester toujours vos fonctions et programmes sur des exercices vus en classe pour vous assurer qu’il fonctionne correctement ! En effet, le but est d’éviter d’avoir à le faire rendu à l’examen et vous mettez donc votre note en jeux en fessant cela. Vous devez également être conscient des limitations de chacun de ceux-ci. En effet, il est possible que ceux-ci ne fonctionnent que dans certains cas précis (parfois avec des commentaires à ce sujet qui ont été mis dans les fonctions et programmes). De ce fait, vous devez toujours être apte à résoudre à la main ces différents problèmes et ne vous fiez pas de manière aveugle à ceux-ci à moins d’être absolument 100 % confiant, car vous savez parfaitement comment ils fonctionnent.
  
