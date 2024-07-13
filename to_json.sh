#/bin/bash
cd $1
helm template ./sc-helm-chart/ > helm-chart.yml
cat ./helm-chart.yml | yq --split-exp '(.kind | downcase)'
