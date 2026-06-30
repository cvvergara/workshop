-- osm2pgrouting compatibility: rename v2.x columns to v3.x naming
-- Run this after importing data with osm2pgrouting for Bangladesh.

ALTER TABLE waterways.waterways_ways RENAME COLUMN gid TO id;
ALTER TABLE waterways.waterways_ways RENAME COLUMN the_geom TO geom;
ALTER TABLE waterways.waterways_ways_vertices_pgr RENAME COLUMN the_geom TO geom;
