#!/bin/bash

# Hole den aktuellen Bitcoin-Preis in USD
BTC_PRICE=$(curl -s "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd" | jq '.bitcoin.usd')

# Aktualisiere das SketchyBar-Element mit dem aktuellen Preis
sketchybar --set btc label="BTC: $BTC_PRICE USD"
