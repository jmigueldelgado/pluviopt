require(readr)
require(dplyr)
require(rvest)
tbl <- get_stations_file()
p <- get_file_web(tbl$ref[4],"01/01/2017","01/06/2017")

require(ggplot2)
ggplot(p)+geom_point(aes(x=datetime,y=value))
