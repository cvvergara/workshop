set -e

#4.3.1 from-here
osm2pgrouting \
    -f "mumbai.osm" \
    -c /usr/local/share/osm2pgrouting/mapconfig.xml \
    -d mumbai \
    -U user \
    -W user \
    --clean
#4.3.1 to-here
