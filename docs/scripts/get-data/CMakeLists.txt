

#---------------------
# Files
#---------------------
set(PGR_WORKSHOP_FILES
  get-osgeolive-data.sh
  get-mumbai-data.sh
  )


#---------------------------------------------
# Adding the documentation files
#---------------------------------------------

foreach (f ${PGR_WORKSHOP_FILES})
    if (PGR_WORKSHOP_VERBOSE_DEBUG)
        message(STATUS "    Adding file ${f}")
    endif()
    configure_file(${f} ${f})
endforeach()

#----------------------------------------------
# Download from OSGeoLive
#---------------------------------------------

add_custom_command(
  COMMAND bash get-osgeolive-data.sh
  COMMAND bash get-mumbai-data.sh
  OUTPUT "${PGR_WORKSHOP_CITY_FILE}.osm" "mumbai.osm"
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
  COMMENT "getting data"
  )
add_custom_target(get_data_scripts
  DEPENDS "${PGR_WORKSHOP_CITY_FILE}.osm" "mumbai.osm"
)
