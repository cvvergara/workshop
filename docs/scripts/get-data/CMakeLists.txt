

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

if (NOT EXISTS ${CMAKE_CURRENT_BINARY_DIR}/${PGR_WORKSHOP_CITY_FILE}.osm)
execute_process(
  OUTPUT_FILE ${CMAKE_CURRENT_BINARY_DIR}/${PGR_WORKSHOP_CITY_FILE}.osm
  COMMAND bash ${CMAKE_CURRENT_BINARY_DIR}/get-osgeolive-data.sh
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
  INPUT_FILE  ${CMAKE_CURRENT_BINARY_DIR}/get-osgeolive-data.sh
  )
endif()

if (NOT EXISTS ${CMAKE_CURRENT_BINARY_DIR}/mumbai.osm)
execute_process(
  OUTPUT_FILE ${CMAKE_CURRENT_BINARY_DIR}/mumbai.osm
  COMMAND bash ${CMAKE_CURRENT_BINARY_DIR}/get-mumbai-data.sh
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
  INPUT_FILE  ${CMAKE_CURRENT_BINARY_DIR}/get-mumbai-data.sh
  )
endif()

add_custom_target(get_data_scripts
  DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/${PGR_WORKSHOP_CITY_FILE}.osm"
  "${CMAKE_CURRENT_BINARY_DIR}/mumbai.osm"
  )

