# Dealer_Lookup.sh
# Author: Juan Arteaga
# Date: Saturday, 3 April 2021

# SYNOPSIS: ./Dealer_Lookup.sh MMDD HH:MM:SS AM|PM 



cat Normalised_Dealer_Schedule | grep $1 | grep $2  | grep $3  | awk -F , '{print $1, $2, $3, $5 }'
