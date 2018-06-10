install.packages("RgoogleMaps")
library(ggmap)
install.packages("ggmap")
endereco <- "Rua Joaquim Lírio, 96, Brasil"
get_map(endereco,source="google")

geocode(endereco)


library(ggmap)
locs <- c('Jiron Cuzco 423, Magdalena del Mar', 'Av Nicolas Arriola 500, La Victoria')
geocode(locs)

mapImageData1 <- get_map(location = c(lon = -40.30512, lat = -20.31195),
                         color = "color",
                         source = "google",
                         maptype = "roadmap",
                         zoom = 17)

ggmap(mapImageData1,
      extent = "device",
      ylab = "Latitude",
      xlab = "Longitude")
