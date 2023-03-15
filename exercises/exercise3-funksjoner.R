# -*- coding: utf-8 -*-
# # Øvelser om funksjoner


# ## 1) Lage en funksjon som returnere 'Enebolig' eller 'Annen' baserte på det som sendes inn til funksjonen.
# Funksjonen skal ha en parameter for boligtype kode ('01','02',...). Funksjonen skal returnere "Enebolig" om koden er '01', ellers skal det returnere "Annen".
# Bruk `ifelse` (ikke `if` og `else`) så at det kan ta imot vektorer.



# ## 2) Teste funksjonen fra 1) ved å kalle det og sende inn '01' eller '03'. Sjekk at funksjonen returnerer riktig svar
# Fungere det også for vektorer? dvs. når du sende inn `c('01', '03')` til funksjonen.




# ## 3) Bruke funksjonen fra 1) til å lage en ny variabel for bygningstype på 2022 data.  
# Les inn filen som heter "ByggType_2022.csv" som ligger i data mappen. Bruk deretter `mutate` sammen med funksjonen du har skreveet for å lage variablen.

library(tidyverse)



# ## 4) Lage en ny variant av funksjonen med to parameter. 
# Den første parameteren skal være det samme som før.
# Den andre paremateren skal spesifisere hvilket språk skal returneres, for eks spesifisere "en" for engelsk eller "nb" for bokmål. 
# Hvis engelsk er valgt skal den nye funksjonen returnerer "Detached house" eller "Other house".



# ## 5) Sette en default verdi i funksjonen du skrev i 4) for å returnere norsk hivs ikke språk er spesifisert.



# ## Ekstra: Lage en for-løkke som brukes funksjonen fra 5). Lage en oppsummerings tabell over antall boliger etter Enebolig/Annen klassifisering for årene 2020-2022.


