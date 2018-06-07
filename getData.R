library("readxl")
library("placement")
library("devtools")
library("RCurl")

df <- read_excel("endereco.xlsx",sheet = 1)

endereco <- "Av. Cesar Hilal, 700 Vitoria ES CEP: 29.052-232 Brasil"

ll <- geocode_url(address = endereco, clean = T,auth="standard_api", privkey="AIzaSyBY20H089DMPHABXcPhty3HFGgsXmrVQw0",messages = T)
print(ll[ , 1:5])

url <- function(address) {
  privKey <- "&key=AIzaSyBY20H089DMPHABXcPhty3HFGgsXmrVQw0"
  root <- "https://maps.googleapis.com/maps/api/geocode/json?address="
  u <- paste(root, address,privKey)
  return(URLencode(u))
}

geoCode <- function(address,verbose=FALSE) {
  if(verbose) cat(address,"\n")
  u <- url(address)
  doc <- getURL(u)
  x <- fromJSON(doc,simplify = FALSE)
  if(x$status=="OK") {
    lat <- x$results[[1]]$geometry$location$lat
    lng <- x$results[[1]]$geometry$location$lng
    location_type <- x$results[[1]]$geometry$location_type
    formatted_address <- x$results[[1]]$formatted_address
    return(c(lat, lng, location_type, formatted_address))
  } else {
    return(paste(x$status,address))
  }
}

geoCode(endereco)
url(endereco)
getURL("https://maps.googleapis.com/maps/api/geocode/json?address=%20Rua%20Joaquim%20Lirio,%2096,%20Brasil%20&key=AIzaSyDP0mn4Ja3N0cU2gGJUTtxKgPFZrxOeRw4")
