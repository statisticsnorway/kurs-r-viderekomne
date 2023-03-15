# -*- coding: utf-8 -*-
# # Eksempel bruk av esquisse
#
# ### Load inn bibliotekene
# For å ta i bruk esquisse må vi hente inn biblioteket "esquisse". Dette er en del av kurs-miljø vi har sett opp. Ved å kjøre `autoload` vil alle de pakkene som trengs på kurset bli installerte/tilgjengelig for deg. 


renv::autoload()


# Les inn pakken `esquisse` og wrapper-funksjone som er i en tilleggsfil.


library(esquisse)
source('esquisse_wrapper.R')


# ### Les inn kommune data

komm <- read.csv("../data/kommunedata.csv")
head(komm)

komm$tid <- factor(komm$tid)
komm$kjonn <- factor(komm$kjonn)
komm$region <- factor(komm$region)


# ### Kjør esquisse

esquisser_ssb(komm)



