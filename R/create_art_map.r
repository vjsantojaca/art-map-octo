# libraries that we need
library(tidyverse)
library(osmdata)

#' Using Open Streetmaps API obtain information about Salamanca and plot a map
#'

#' @export
#' @import tidyverse osmdata sf
#' @examples
#' create_art_map()

create_art_map <- function() {
  # obtain coordinates for ggplot
  bb_salamanca <- getbb("Salamanca, España")

  # obtain the dataset
  streets <- bb_salamanca %>%
    opq() %>%
    add_osm_feature(key = "highway", value = c("motorway", "primary", "secondary", "tertiary")) %>%
    osmdata_sf()

  small_streets <- bb_salamanca %>%
    opq() %>%
    add_osm_feature(key = "highway", value = c("residential", "living_street", "unclassified", "service", "pedestrian", "footway", "track","path")) %>%
    osmdata_sf()

  river <- bb_salamanca %>%
    opq() %>%
    add_osm_feature(key = "waterway", value = "river") %>%
    osmdata_sf()

  # create map
  final_map <- ggplot() +
          #ggtitle("SALAMANCA") +
          geom_sf(data = streets$osm_lines, inherit.aes = FALSE, color = "black", size = .4, alpha = .8) +
          geom_sf(data = small_streets$osm_lines, inherit.aes = FALSE, color = "black", size = .2, alpha = .8) +
          geom_sf(data = river$osm_lines, inherit.aes = FALSE, color = "black", size = 1.3, alpha = .5) +
          coord_sf(xlim = c(min(bb_salamanca[1,]), max(bb_salamanca[1,])), ylim = c(min(bb_salamanca[2,]), max(bb_salamanca[2,])), expand = FALSE) +
          theme_void() +
          theme(
          axis.ticks = element_blank(),
          plot.background = element_rect(fill="white"),
          plot.margin=unit(c(2.4,2.4,2.4,2.4), "cm")
          )

  # save map
  ggsave(final_map, 
        filename = "salamanca_500_white_black.png",
        scale = 1, 
        width = 36, 
        height = 24, 
        units = "in",
        dpi = 500)
}