De MeeApp!
=====================
# De App 
### Wie heeft dit gemaakt en wat is dit?
Peter van der Meulen, Johan van Eck, Lianne Wiersma en Geert Wit zijn verantwoordelijk voor de nieuwe applicatie van Mee.nl. Met de app is het mogelijk om als cliënt, bedrijf en gemeente om informatie, advies en ondersteuning te vragen bij de organisatie. Onder de informatie bevindt zich ondere andere opvoeding, ontwikkeling, leren, werken, samenleven, wonen, regelgeving en geldzaken. 

### Hoe download ik dit op mijn computer en installeer ik het?
Voordat u dit project kunt gebruiken dient u Imagemagick te installeren op uw lokale computer, instructies hierover vindt u [hier][1].

In de terminal voert u de volgende regel code in: 

    http://www.imagemagick.org/script/index.php
    
Vervolgens navigeert u het project in middels: 

    cd meeapp

Daarna gaat u de bundle instaleren door het volgende in de terminal in te voeren:

    bundle install
 
Als laatste stap die u dient te doen, is het invoeren van:
 
    rake db:migrate

    rake db:seed

    rails server
    
U kunt de pagina dan openen op localhost:3000