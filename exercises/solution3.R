# -*- coding: utf-8 -*-
# # Øvelser om funksjoner


# ## 1) Lage en funksjon som returnere 'Enebolig' eller 'Annen' baserte på det som sendes inn til funksjonen.
# Funksjonen skal ha en parameter for boligtype kode ('01','02',...). Funksjonen skal returnere "Enebolig" om koden er '01', ellers skal det returnere "Annen".
# Bruk `ifelse` (ikke `if` og `else`) så at det kan ta imot vektorer.

byggtype_fn <- function(kode){
    kat <- ifelse(kode == "01", "Enebolig", "Annen")
    kat
    }

# ## 2) Teste funksjonen fra 1) ved å kalle det og sende inn '01' eller '03'. Sjekk at funksjonen returnerer riktig svar
# Fungere det også for vektorer? dvs. når du sende inn `c('01', '03')` til funksjonen.

byggtype_fn("01")

byggtype_fn(c('01','03'))

# ## 3) Bruke funksjonen fra 1) til å lage en ny variabel for bygningstype på 2022 data.  
# Les inn filen som heter "ByggType_2022.csv" som ligger i data mappen. Bruk deretter `mutate` sammen med funksjonen du har skreveet for å lage variablen.

library(tidyverse)
bygg2022 <- read_csv("../data/ByggType_2022.csv")

bygg2022 <- bygg2022 %>%
    mutate(BygnType_kat = byggtype_fn(BygnType))
head(bygg2022)

# ## 4) Lage en ny variant av funksjonen med to parameter. 
# Den første parameteren skal være det samme som før.
# Den andre paremateren skal spesifisere hvilket språk skal returneres, for eks spesifisere "en" for engelsk eller "nb" for bokmål. 
# Hvis engelsk er valgt skal den nye funksjonen returnerer "Detached house" eller "Other house".

byggtype_fn <- function(kode, spraak){
    if (spraak == "en"){
        kat <- ifelse(kode == "01", "Detached house", "Other house")
        } else if (spraak == "nb") {
        kat <- ifelse(kode == "01", "Enebolig", "Annen")
        }
    kat
    }

byggtype_fn("01", spraak="en")

# ## 5) Sette en default verdi i funksjonen du skrev i 4) for å returnere norsk hivs ikke språk er spesifisert.

byggtype_fn <- function(kode, spraak = "nb"){
    if (spraak == "en"){
        kat <- ifelse(kode == "01", "Detached house", "Other house")
        } else if (spraak == "nb") {
        kat <- ifelse(kode == "01", "Enebolig", "Annen")
        }
    kat
    }

byggtype_fn("02")

# ## Ekstra: Lage en for-løkke som brukes funksjonen fra 5). Lage en oppsummerings tabell over antall boliger etter Enebolig/Annen klassifisering for årene 2020-2022.

aarsfiler <- paste0("../data/ByggType_", 2020:2022, ".csv")
antall_boliger_oversikt <- NULL
for (fil in aarsfiler){
    dt <- read_csv(fil)
    bygg_table <- dt %>%
        mutate(BygnType_kat = byggtype_fn(BygnType)) %>%
        group_by(BygnType_kat) %>%
        summarize(antall_bolig = sum(value))
    var_navn <- paste0("year", substring(fil, 18, 21))
    antall_boliger_oversikt <- bind_cols(antall_boliger_oversikt, bygg_table)
    }
antall_boliger_oversikt <- antall_boliger_oversikt[, c(1,2,4,6)]
colnames(antall_boliger_oversikt) <- c("BygnType", "year2020", "year2021", "year2022")
antall_boliger_oversikt


