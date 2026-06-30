-- osm2pgrouting compatibility: rename v2.x columns to v3.x naming
-- Run this after importing data with osm2pgrouting for Bangladesh.

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'waterways' AND table_name = 'waterways_ways' AND column_name = 'gid'
  ) THEN
    ALTER TABLE waterways.waterways_ways RENAME COLUMN gid TO id;
    RAISE NOTICE 'Renamed waterways.waterways_ways.gid -> id';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'waterways' AND table_name = 'waterways_ways' AND column_name = 'the_geom'
  ) THEN
    ALTER TABLE waterways.waterways_ways RENAME COLUMN the_geom TO geom;
    RAISE NOTICE 'Renamed waterways.waterways_ways.the_geom -> geom';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'waterways' AND table_name = 'waterways_ways_vertices_pgr' AND column_name = 'the_geom'
  ) THEN
    ALTER TABLE waterways.waterways_ways_vertices_pgr RENAME COLUMN the_geom TO geom;
    RAISE NOTICE 'Renamed waterways.waterways_ways_vertices_pgr.the_geom -> geom';
  END IF;
END $$;
