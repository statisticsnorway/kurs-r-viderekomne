renv::install('PxWebApiData')
library(PxWebDataApi)

df <- ApiData('06513', 
              Tid = c("2020","2021","2022"),
              ContentsCode = "Boliger (bebodde og ubebodde)",
              BygnType=c("01","02","03","04","05","999"),
              BruksAreal = c("1","2","3","4","5","6","50","51","52","53","54","55","56","57")
)

df$dataset

ByggType_2020 <- df$dataset[df$dataset$Region == 0 & df$dataset$Tid == "2020", c("BygnType", "BruksAreal","Tid", "value")]
ByggType_2021 <- df$dataset[df$dataset$Region == 0 & df$dataset$Tid == "2021", c("BygnType", "BruksAreal","Tid", "value")]
ByggType_2022 <- df$dataset[df$dataset$Region == 0 & df$dataset$Tid == "2022", c("BygnType", "BruksAreal","Tid", "value")]


# Adjust size variable
size <- c(">30","30-39","40-49","50-59","60-79","80-99","100-119","120-139","140-159","160-199", "200-249","250-299","300-349","300+")
ByggType_2020["BruksAreal"] <- rep(size, 6)
ByggType_2021["BruksAreal"] <- rep(size, 6)
ByggType_2022["BruksAreal"] <- rep(size, 6)

write.csv(ByggType_2020, file = "ByggType_2020.csv", row.names=F)
write.csv(ByggType_2021, file = "ByggType_2021.csv", row.names=F)
write.csv(ByggType_2022, file = "ByggType_2022.csv", row.names=F)

