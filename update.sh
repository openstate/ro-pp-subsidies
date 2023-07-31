#!/bin/sh
cd /opt/ro
rm -f message.txt
touch message.txt

GITHUB_PERSONAL_TOKEN=xxx
git pull https://${GITHUB_PERSONAL_TOKEN}@github.com/openstate/ro-pp-subsidies.git master

ODS_LINK=`./get-link.py`
wget -q -O tmp-subsidies.ods "$ODS_LINK"
libreoffice --convert-to csv tmp-subsidies.ods

#csvformat -d ';' -D ',' -e iso-8859-1 tmp-subsidies.csv >tmp-subsidies2.csv
#csvcut -c 1-12 tmp-subsidies2.csv >tmp-subsidies3.csv
sed '1s/^\xEF\xBB\xBF//;${/^$/d;}' tmp-subsidies.csv >"subsidies.csv"
#csv-diff subsidies-old.csv subsidies.csv --key=DOSSIERNUMMER >>message.txt
cp -f subsidies.csv subsidies-old.csv

git add subsidies.csv

git config --global user.email "developers@openstate.eu"
git config --global user.name "OpenState Devs"
git commit -F message.txt && \
              git push -q https://${GITHUB_PERSONAL_TOKEN}@github.com/openstate/ro-pp-subsidies.git master \
              || true
