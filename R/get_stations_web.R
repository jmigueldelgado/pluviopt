#' Get station metadata from the SNIRH
#' Currently not working!
#' @import readr
#' @import utils
#' @export
get_stations_web <- function()
{
    download.file(url="http://snirh.apambiente.pt/snirh/_dadosbase/site/paraCSV/lista_csv.php?obj_janela=INFO_ESTACOES&s_cover=920123704&tp_lista=&formato=csv",destfile="./stations_meta.csv")
    tbl <- read_csv("./stations_meta.csv")
    return(tbl)
}

