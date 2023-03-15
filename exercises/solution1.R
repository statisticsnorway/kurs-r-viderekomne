# -*- coding: utf-8 -*-
# # Øvelser om indeskering
# Indeksering er en måte å velge elementer i vektorer, lister og data i R. Selv om det ikke brukes særlig med tidyverse kan det være nyttig å forstå hvordan det fungere. I R starter indeksering fra 1.


# ## 1) Plukke ut elementene 3 og 4 fra bygningstype vektoren

# Bruk følgene vektoren av bygningstype ([klass 31, variant 1062](https://www.ssb.no/klass/klassifikasjoner/31/varianter/1062)) til øvelser 1- 3.

bygningstype <- c("Enebolig", "Tomannsbolig", "Rekkehus", "Store boligbygg", "Bygning for bofellesskap", "Andre bygningstyper")

bygningstype[3:4]

# ## 2) Velge alle i vektoren bortsett fra "Tomannsbolig"

bygningstype[-2]

ind <- match("Tomannsbolig", bygningstype)
bygningstype[-ind]

# ## 3) Plukke ut siste elementen i vektoren

ind <- length(bygningstype)
bygningstype[ind]

# ## 4) Bruk indeksering til å plukke ut kode fra en datasett.

# Øve med både tall for indeksering av koloner/rad og navn til koloner.
# Bruk følgende dataframe for oppgave 4 - 5. 

bygg_df <- data.frame(bygningstype = bygningstype,
          bygningskode = c('01', '02', '03', '04', '05', '06'))
head(bygg_df)

bygg_df[1, 1]

bygg_df[, 2]

bygg_df[1, "bygningskode"]

# ## 5) Endre data frame til en tibble (tidyverse data frame)

library(tidyverse)
bygg_tb <- tibble(bygg_df)
head(bygg_tb)


