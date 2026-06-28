add_custom_target(un_sdg3_scripts)

configure_file(all_exercises_sdg3.sql all_exercises_sdg3.sql)

add_custom_command(
  TARGET un_sdg3_scripts
  PRE_BUILD
  BYPRODUCTS
    kind_of_buildings.txt
    population_function.txt
    show_population_100.txt
    show_population_300.txt
    show_schemas.txt
    show_path1.txt
    set_path.txt
    show_path2.txt
    enumerate_tables.txt
    count1.txt
    count2.txt
    skip1.txt
    only_connected0.txt
    only_connected1.txt
    only_connected2.txt
    only_connected3.txt
    only_connected4.txt
    only_connected5.txt
    only_connected6.txt
    building_road.txt
    test_building_road.txt
    nearest_vertex.txt
    test_nearest_vertex.txt
    clean_buildings.txt
    roads_population.txt
    served_roads.txt
    adjacent_roads.txt
    population_served.txt
  COMMAND psql -d mumbai -f all_exercises_sdg3.sql
  COMMENT "running chapter sdg3 scripts"
)
