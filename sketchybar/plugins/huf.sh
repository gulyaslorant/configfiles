#!/bin/bash

# Hole den aktuellen EUR/HUF Wechselkurs
EUR_TO_HUF=$(curl -s "https://api.exchangerate-api.com/v4/latest/EUR" | jq '.rates.HUF')

# Aktualisiere das SketchyBar-Element mit dem aktuellen Wechselkurs
sketchybar --set eur_huf label="EUR: $EUR_TO_HUF HUF"
