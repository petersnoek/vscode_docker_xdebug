# vscode_docker_xdebug
A set of files for starting a new project, using Visual Studio Code, a Docker container for running the code and xdebug

Gebaseerd op dit artikel: [https://medium.com/@jasonterando/debugging-with-visual-studio-code-xdebug-and-docker-on-windows-b63a10b0dec]()

Nodig:
- git commandline is geinstalleerd en te gebruiken vanaf opdrachtprompt (windows) / terminal (mac) (gratis te downloaden via [https://git-scm.com/downloads]())
- Visual Studio Code - vanaf hier genoemd: VSCode - (gratis te downloaden via [https://code.visualstudio.com/download]()) - dit stappenplan gebruikt versie 1.52.1 voor Mac
- VSCode extensions van Felix Becker: PHP Debugging (code pauzeren en regel voor regeluitvoeren) en Intellisense (tijdens het intypen van code krijg je suggesties)
- Docker Desktop (gratis te downloaden voor Windows/Mac/Linux via [https://docs.docker.com/get-docker/]()) - dit stappenplan gebruikt versie 3.0.3 voor Mac
- Docker image met PHP en xdebug (gaan we maken in dit stappenplan)
  (XDebug is een PHP extensie die het mogelijk maakt om code te pauzeren, variabelen te inspecteren)

Stappen:
- open een opdrachtprompt (windows) of terminal (mac)
- ga naar een geschikte map op je harde schijf om programmeerwerk op te slaan (in Windows: open windows verkenner, en type in de adresbalk `%USERPROFILE%` - je gaat dan naar je profielmap, bijvoorbeeld `c:\gebruikers\peter\`, open dan de map 'mijn documenten' )
- maak een nieuwe map `code` (in Windows: `mkdir code` )
- haal de startbestanden op met het commando: 
  `git clone https://github.com/petersnoek/vscode_docker_xdebug.git`
  (maakt een nieuwe map `vscode_docker_xdebug` met daarin de bestanden die je nodig hebt)

- in VSCode, klik op "Extensions" icon in het linker menu en zoek "PHP Debug". Klik op "PHP Debug 1.14.5 van Felix Becker" en klik op het blauwe knopje "install".
- in VACode, installeer de extensie "PHP Intellisense 2.3.14" van Felix Becker. Om te zorgen dat de standaard intellisense van VSCode uit staat: open de VSCode preferences, zoek naar "php.suggest.basic" en zet het vinkje uit.
- in VSCode ga naar het menu "Run", "Add configuration"