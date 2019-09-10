#!/usr/bin/bash

# Vägen dit nya mappen ska ligga
MAL="/<DIN FILVÄG>/Programmering/web"

# där mallen finns
MALLPLATS="/<DIN FILVÄG>/Programmering/web/mall"

# Namnet på nya projektet/mappen
read -p "Vilket namn har projektet? (INGA MELLANRUM I NAMNET) " PROJEKT

# slår ihop förvald målmapp med namnet på nya projektet
PROJEKTMAL="$MAL/$PROJEKT"
echo $PROJEKTMAL

# Kollar om mappen redan finns, om så är fallet händer inget
if [ -d $PROJEKTMAL ]
then 
    echo "'$PROJEKT' finns redan och mappen/filerna har inte ersatts"
else 
    cp -r $MALLPLATS $PROJEKTMAL
    echo "'$PROJEKT' har skapats"

# Initierar GIT och gör en första commit med de filer som finns i mallen
    cd $PROJEKTMAL
    git init
    git add .
    git commit -m "Projektet påbörjat"
fi

