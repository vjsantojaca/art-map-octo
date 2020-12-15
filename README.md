# Art Map with R 👩🏻‍🎨 🧑🏻‍🎨

[![Build Status](https://travis-ci.com/vjsantojaca/art-map-octo.svg?branch=main)](https://travis-ci.com/vjsantojaca/art-map-octo)

## Overview
The function **create_art_map** creates a png 36*24 Inch with 500 dpi with a streets information of Salamanca
## Dependencies
- ### ggplot2
    ***ggplot2*** is a data visualization package for the statistical programming language R. It is a part of tidyverse. ggplot2 is a system for declaratively creating graphics, based on The Grammar of Graphics. You provide the data, tell ggplot2 how to map variables to aesthetics, what graphical primitives to use, and it takes care of the details.

    More information -> https://ggplot2.tidyverse.org/

    ```R
    install.packages("tidyverse")
    ```
- ### osmdata
    ***osmdata*** is an R package for downloading and using data from OpenStreetMap.  OSM is a global open access mapping project, which is free and open under the ODbL licence.

    ```R
    install.packages("osmdata")
    ```

## Installation
```R
devtools::install_github("vjsantojaca/art-map-octo")
```


## Example Plot
![Salamanca map art black and white](plots/salamanca_500_white_black.png "Salamanca map art black and white")
![Salamanca map art color](plots/salamanca_500_colors.png "Salamanca map art colors")
## Bibliography 📘
- [Esteban Moro](https://github.com/emoro). 2020. ["*Personal Art Map with R*"](http://estebanmoro.org/post/2020-10-19-personal-art-map-with-r/)