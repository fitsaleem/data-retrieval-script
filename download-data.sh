#!/bin/sh

DATA_DIR="/app/data"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
NEW_DIR="$DATA_DIR/$TIMESTAMP"
mkdir -p "$NEW_DIR"
cd "$NEW_DIR"
wget -q --no-check-certificate https://github.com/fitsaleem/covid-19-data/raw/master/public/data/owid-covid-data.csv
wget -q --no-check-certificate https://github.com/fitsaleem/covid-19-data/raw/master/public/data/owid-covid-codebook.csv

