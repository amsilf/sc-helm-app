#/bin/bash
cd $1
helm template ./sc-helm-chart/ > helm-chart.yml
yq --split-exp "(.kind | downcase)" ./helm-chart.yml
