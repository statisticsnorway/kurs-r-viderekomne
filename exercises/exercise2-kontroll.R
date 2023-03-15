# -*- coding: utf-8 -*-
# # Øvelser om kontroll av prosesser

# ## 1) Lage en test (med `if`) for å se om 'Enebolig' er inn i en vektor

# Skriv ut (for eks.) 'Enebolig er i vektoren' hvis det er, eller en annen melding om det ikke er det.
# Følgende vektor 'bygningstype' kan brukes til øvelser 1 - 2.

bygningstype <- c("Enebolig", "Tomannsbolig", "Rekkehus", "Store boligbygg", "Bygning for bofellesskap", "Andre bygningstyper")



# ##  2) Lage en for-løkke for å gå gjennom elementene i bygningstype vektoren. 
# Hvis elementen er "Enebolig", skriv ut "Dette er en enebolig". Hvis elementen ikke er "Enebolig" skriv ut en alternativ melding.



# ## 3) Les inn data om antall boliger etter bygningstype og bruksareal for 2022 
# Data er lagret på data mappen og heter ByggType_2022.csv. Data kommer fra [Statbank tabell 06513](https://www.ssb.no/statbank/table/06513/).
# Variablene i filen:
# - **BygnType** er byggningstype 01-05 (999 ukjent) [se klass 31, variant 1062](https://www.ssb.no/klass/klassifikasjoner/31/varianter/1062)
# - **BruksAreal** er kategorisk variablen for areal 
# - **Tid** er årsgang
# - **value** er antall boliger

library(tidyverse)




# ## 4) Oppsummere antall bolig etter bygningstype for 2022
# Hint: Bruk `group_by` og `summarize` fra tidyverse



# ## 5) Lage en for-løkke for å lese inn data om antall bolig for årene 2020 - 2022. Skriv ut totall antall boliger etter bygningstype for hvert år
# Hint: Bruk følgende kode for å lage en vektor av filnavn som kan loopes gjennom. Bruk kode du har laget i oppgaver 3 og 4 til å lese inn og oppsummere hver fil. 


aarsfiler <- paste0("../data/ByggType_", 2020:2022, ".csv")
aarsfiler



# ## 6) Lage den samme for-løkke men lagre oppsummering til en dataframe/tibble (istedenfor å skrive ut)
# Hint: 
# - Sett opp et objekt som skal være dataframe uten innhold først (for eks. `antall_boliger_oversikt <- NULL`)
# - Bruk en for-løkke for å lese inn filene og oppsummerer som før.
# - Bruk `bind_cols` for å legge inn oppsummering til objektet (antall_boliger_oversikt).



