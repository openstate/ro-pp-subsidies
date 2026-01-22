# Overzicht substantiële giften aan politieke partijen
Op 1 januari 2023 is de Wet financiering politieke partijen op een aantal punten gewijzigd. 1 van deze wijzigingen is dat politieke partijen en hun neveninstellingen verplicht zijn om giften vanaf € 10.000 per donateur per jaar binnen 3 dagen na ontvangst te melden bij de minister van Binnenlandse Zaken en Koninkrijksrelaties. De minister maakt deze giften vervolgens openbaar door publicatie op Rijksoverheid.nl (zie voor elk jaar [Overzicht substantiële giften aan politieke partijen](https://www.rijksoverheid.nl/onderwerpen/democratie/documenten?trefwoord=giften+aan+politieke+partijen&startdatum=&einddatum=&onderwerp=Alle+onderwerpen&onderdeel=Alle+ministeries&type=Alle+documenten)). De substantiële giften worden daar periodiek openbaar gemaakt.

Wij checken elke dag of er veranderingen zijn doorgevoerd in het giften overzicht op Rijksoverheid.nl en voeren de veranderingen hier in deze Git repository ook door in `subsidides.csv`. Alle wijzigingen zijn daardoor te zien via de [Git commits](https://github.com/openstate/ro-pp-subsidies/commits/master/).

# Running
- Copy `update.sh.example` to `update.sh` and fill in your GitHub token
- `cd docker && docker-compose up -d`
- Add a cronjob for `update.sh`

# Instructies
Wijzig aan het begin van een nieuw jaar de URL in `get-link.py` en hernoem de `subsidies.csv` van afgelopen naar naar `subsidies-<JAARTAL>.csv` zoals in [deze commit](https://github.com/openstate/ro-pp-subsidies/commit/63f5b228269bf9a92964d29e9d390b4c0e3d5ab7). Bekijk [deze pagina voor de nieuwe URL](https://www.rijksoverheid.nl/onderwerpen/democratie/documenten?trefwoord=+Overzicht+substanti%C3%ABle+giften+aan+politieke+partijen&startdatum=&einddatum=&onderwerp=Alle+onderwerpen&onderdeel=Alle+ministeries&type=Alle+documenten).

# Contact
Open State Foundation <developers@openstate.eu>
