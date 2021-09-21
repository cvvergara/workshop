#!/bin/bash
set -e

# osgeolive data from-here
CITY="@PGR_WORKSHOP_CITY_FILE@"
wget -N --progress=dot:mega \
"http://download.osgeo.org/livedvd/14/osm/$CITY.osm.bz2"
bunzip2 -f "$CITY.osm.bz2"
# osgeolive data to-here
