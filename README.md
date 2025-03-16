# Overzicht substantiële giften aan politieke partijen
Op 1 januari 2023 is de Wet financiering politieke partijen op een aantal punten gewijzigd. 1 van deze wijzigingen is dat politieke partijen en hun neveninstellingen verplicht zijn om giften vanaf € 10.000 per donateur per jaar binnen 3 dagen na ontvangst te melden bij de minister van Binnenlandse Zaken en Koninkrijksrelaties. De minister maakt deze giften vervolgens openbaar door publicatie op Rijksoverheid.nl. De substantiële giften voor 2023 worden op deze pagina periodiek openbaar gemaakt.

Hier maken we inzichtelijk welke updates er in het overzicht gemaakt zijn.

NB. Dit is momenteel nog in de test fase, er kan her en der nog wat veranderen ;)

# Running
- Copy `update.sh.example` to `update.sh` and fill in your GitHub token
- `cd docker && docker-compose up -d`
- Add a cronjob for `update.sh`

# Instructies
Wijzig elk jaar de URL in `get-link.py`. Bekijk [deze pagina voor de nieuwe URL](https://www.rijksoverheid.nl/onderwerpen/democratie/documenten?trefwoord=+Overzicht+substanti%C3%ABle+giften+aan+politieke+partijen&startdatum=&einddatum=&onderwerp=Alle+onderwerpen&onderdeel=Alle+ministeries&type=Alle+documenten).

# Contact
Breyten Ernsting <breyten@openstate.eu>
