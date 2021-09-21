

#---------------------
# Files
#---------------------
set(PGR_WORKSHOP_FILES
  dbdrop.sh
  city_routing.sh
  mumbai.sh
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


add_custom_command(
  COMMAND bash ${CMAKE_CURRENT_BINARY_DIR}/dbdrop.sh > dbdrop.txt
  COMMAND bash ${CMAKE_CURRENT_BINARY_DIR}/city_routing.sh > created_city_routing.txt
  COMMAND bash ${CMAKE_CURRENT_BINARY_DIR}/mumbai.sh > created_mumbai.txt
  OUTPUT dbdrop.txt created_city_routing.txt created_mumbai.txt
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
  DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/dbdrop.sh city_routing.sh mumbai.sh
  COMMENT "creating databases"
  )
add_custom_target(dbcreate_scripts
  DEPENDS
  dbdrop.txt created_city_routing.txt created_mumbai.txt
)
