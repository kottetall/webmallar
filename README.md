# webmallar
Skapar grunderna för ett webprojekt genom att kopiera mallar samt initiera GIT och göra ett första commit

Mallmappen innehåller index.html samt css och JavaScriptfiler tillsammans med en "temp"-mapp för arbetsmaterial, det 
finns även en .gitignore där temp-filen undantas versionkontrollen. Html-filen innehåller grundtaggar samt meta- & 
script-taggar till css och JavaScriptfiler. 

Shellscriptet kollar om det finns någon mapp(projekt) i målmappen, med det namn man angett. Finns en sådan mapp avbryts scriptet 
för att inte skriva över redan existerande filer. Finns det inte, kopieras mallmappen till en ny mapp med det namn man angett. 
När mappen är kopierad initieras en ny GIT-repo och de initiala filerna läggs till och en förstacommit görs. 
