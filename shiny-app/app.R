#install.packages("shiny")
#install.packages("leaflet")

require(shiny)
require(leaflet)

m <- leaflet() %>%
    addProviderTiles(providers$OpenStreetMap) %>% 
    #addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-8.09612, lat=40.80034, popup="Home")
m  # Print the map

## See above for the definitions of ui and server
ui <- ...

server <- ...

shinyApp(ui = ui, server = server)
