#!/usr/bin/bash

# Har kopierats till /usr/bin för att kunna köras överallt. Detta är alltså en kopia
# Detta är en kopia för Github och filvägarna behöver därför ersättas för att scriptet ska fungera

# Kräver ett projektnamn när man kör scriptet
PROJEKT=${1?Error: Du behöver ange ett projektnamn}

# Vägen dit nya mappen ska ligga
MAL="/c/<FILVÄG DIT NYA PROJEKTET SKA LIGGA>/web"

# där mallen finns
MALLPLATS="/c/<FILVÄG DÄR MALLINNEHÅLLET FINNS>/web/mall"

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

