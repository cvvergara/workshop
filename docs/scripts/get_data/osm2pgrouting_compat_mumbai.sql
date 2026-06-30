-- osm2pgrouting compatibility: rename v2.x columns to v3.x naming
-- Run this after importing data with osm2pgrouting for Mumbai.

ALTER TABLE roads.ways RENAME COLUMN gid TO id;
ALTER TABLE roads.ways RENAME COLUMN the_geom TO geom;
ALTER TABLE buildings.ways RENAME COLUMN gid TO id;
ALTER TABLE buildings.ways RENAME COLUMN the_geom TO geom;
