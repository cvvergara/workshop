-- osm2pgrouting compatibility: rename v2.x columns to v3.x naming
-- Run this after importing data with osm2pgrouting, before the graphs chapter.

ALTER TABLE ways RENAME COLUMN gid TO id;
ALTER TABLE ways RENAME COLUMN the_geom TO geom;
ALTER TABLE ways_vertices_pgr RENAME COLUMN the_geom TO geom;
