#!/bin/bash
# pixels.sh

# rows
# 00 00 00 00 | 00 01 01 01 | 01 00 00 00
printf "\000\025\100"
# 00 00 01 01 | 01 01 01 01 | 01 01 00 00
printf "\005\125\120"
# 00 00 00 00 | 11 11 10 10 | 10 10 00 00
printf "\000\372\240"
# 00 11 11 11 | 10 11 11 10 | 11 11 10 00
printf "\077\276\370"
# 11 11 11 10 | 11 11 10 10 | 11 11 10 00
printf "\376\372\370"
# 00 10 10 10 | 10 11 11 11 | 11 10 10 10
printf "\052\277\352"
# 00 00 11 11 | 11 11 11 11 | 11 00 00 00
printf "\017\377\300"
# 00 00 00 00 | 10 10 10 10 | 10 10 00 00
printf "\000\252\240"
# 00 00 00 10 | 10 01 01 10 | 10 10 10 00
printf "\002\226\250"
# 00 00 00 01 | 01 11 01 01 | 10 10 10 00
printf "\001\165\250"
# 00 00 01 01 | 01 01 01 10 | 10 10 10 00
printf "\005\126\250"
# 00 00 01 01 | 01 01 11 11 | 11 10 01 00
printf "\005\137\344"
# 00 00 01 01 | 01 01 11 11 | 01 01 00 00
printf "\005\137\120"
# 00 00 00 01 | 01 01 00 01 | 01 01 01 00
printf "\001\121\124"
# 00 00 00 10 | 10 10 00 00 | 10 10 10 00
printf "\002\240\250"
# 00 00 10 10 | 10 10 00 10 | 10 10 10 00
printf "\012\242\250"
