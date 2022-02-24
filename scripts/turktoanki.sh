#!/bin/bash
pdftotext -f $1 -l $2 -raw ~/Documents/turkish/turkishfrequencydict.pdf - | awk -f ~/scripts/turktoanki.awk > ~/Documents/turkish/ankilists/anki-list-$1-$2.csv
nvim -c "set wrap"  ~/Documents/turkish/ankilists/anki-list-$1-$2.csv

