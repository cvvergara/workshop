

#---------------------
# Files
#---------------------
set(PGR_WORKSHOP_FILES
  "section-4.3.1.sh"
  "section-4.3.2.sh"
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
  OUTPUT section-4.3.2.txt section-4.3.1.txt
  COMMAND bash ${CMAKE_CURRENT_BINARY_DIR}/section-4.3.1.sh > ${CMAKE_CURRENT_BINARY_DIR}/section-4.3.1.txt
  COMMAND bash ${CMAKE_CURRENT_BINARY_DIR}/section-4.3.2.sh > ${CMAKE_CURRENT_BINARY_DIR}/section-4.3.2.txt
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/../get-data
  DEPENDS section-4.3.1.sh section-4.3.1.sh
  COMMENT "import to database"
  )

add_custom_target(chapter_4_scripts
  DEPENDS section-4.3.2.txt section-4.3.1.sh
  )
