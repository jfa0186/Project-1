
# roulette_dealer_finder_by_time.sh
# Author: Juan Arteaga
# Date: Saturday, 3 April 2021

# SYNOPSIS: ./roulette_dealer_finder_by_time.sh MMDD HHAM|HHPM 

cat Normalised_Dealer_Schedule | sed 's/:00:00,//g' | grep  | grep  | awk -F , '{print }'
