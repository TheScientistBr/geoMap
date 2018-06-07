install.packages("RgoogleMaps")
library(ggmap)
install.packages("ggmap")
endereco <- "Rua Joaquim Lírio, 96, Brasil"
get_map(endereco,source="google")

geocode(endereco)


library(ggmap)
locs <- c('Jiron Cuzco 423, Magdalena del Mar', 'Av Nicolas Arriola 500, La Victoria')
geocode(locs)
