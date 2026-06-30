-- osm2pgrouting compatibility: rename v2.x columns to v3.x naming
-- Run this after importing data with osm2pgrouting for Mumbai.

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'roads' AND table_name = 'roads_ways' AND column_name = 'gid'
  ) THEN
    ALTER TABLE roads.roads_ways RENAME COLUMN gid TO id;
    RAISE NOTICE 'Renamed roads.roads_ways.gid -> id';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'roads' AND table_name = 'roads_ways' AND column_name = 'the_geom'
  ) THEN
    ALTER TABLE roads.roads_ways RENAME COLUMN the_geom TO geom;
    RAISE NOTICE 'Renamed roads.roads_ways.the_geom -> geom';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'roads' AND table_name = 'roads_ways_vertices_pgr' AND column_name = 'the_geom'
  ) THEN
    ALTER TABLE roads.roads_ways_vertices_pgr RENAME COLUMN the_geom TO geom;
    RAISE NOTICE 'Renamed roads.roads_ways_vertices_pgr.the_geom -> geom';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'buildings' AND table_name = 'ways' AND column_name = 'gid'
  ) THEN
    ALTER TABLE buildings.ways RENAME COLUMN gid TO id;
    RAISE NOTICE 'Renamed buildings.ways.gid -> id';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'buildings' AND table_name = 'ways' AND column_name = 'the_geom'
  ) THEN
    ALTER TABLE buildings.ways RENAME COLUMN the_geom TO geom;
    RAISE NOTICE 'Renamed buildings.ways.the_geom -> geom';
  END IF;
END $$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'buildings' AND table_name = 'ways_vertices_pgr' AND column_name = 'the_geom'
  ) THEN
    ALTER TABLE buildings.ways_vertices_pgr RENAME COLUMN the_geom TO geom;
    RAISE NOTICE 'Renamed buildings.ways_vertices_pgr.the_geom -> geom';
  END IF;
END $$;
