# Booklet of State of the Map 2018

## About this repository

This repository is for the source code of the booklet of [State of the Map 2018 conference](https://2018.stateofthemap.org/) in Milan from 28 to 30 July 2018. A nightly build can be found [here](https://michreichert.de/sotm/booklet18/master.pdf).

## Building

To build the booklet run:

```sh
lualatex master.tex
lualatex master.tex
```

… or just use the makefile.

Please note that this booklet is built using LuaLaTeX, not PDFLaTeX. Building
requires at least TeXlive 2016 due to the usage of the quite new
*scrlayer-scrpage2* package


## License

This booklet is licensed under [Creative Commons Attribution Share-Alike 3.0](http://creativecommons.org/licenses/by-sa/3.0/) if not otherwise stated. Logos and advertisements of companies and other organisations are not available under that license. The OpenStreetMap logo is available under the terms of [CC-BY-SA 2.0](http://creativecommons.org/licenses/by-sa/2.0/).

All maps are based on [OpenStreetMap](http://www.openstreetmap.org/copyright)
data, copyright OSM contributors, licensed [ODbL 1.0](http://opendatacommons.org/licenses/odbl/1-0/).

