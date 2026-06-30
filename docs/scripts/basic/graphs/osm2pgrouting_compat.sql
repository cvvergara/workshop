-- osm2pgrouting compatibility: rename v2.x columns to v3.x naming
-- Run this after importing data with osm2pgrouting, before the graphs chapter.

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'ways' AND column_name = 'gid'
  ) THEN
    ALTER TABLE ways RENAME COLUMN gid TO id;
    RAISE NOTICE 'Renamed ways.gid -> id';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'ways' AND column_name = 'the_geom'
  ) THEN
    ALTER TABLE ways RENAME COLUMN the_geom TO geom;
    RAISE NOTICE 'Renamed ways.the_geom -> geom';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'ways_vertices_pgr' AND column_name = 'the_geom'
  ) THEN
    ALTER TABLE ways_vertices_pgr RENAME COLUMN the_geom TO geom;
    RAISE NOTICE 'Renamed ways_vertices_pgr.the_geom -> geom';
  END IF;
END $$;
