add_custom_target(un_sdg11_scripts)

#---------------------
# Files
#---------------------
set(PGR_WORKSHOP_FILES
  all_exercises_sdg11.sql
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
  TARGET un_sdg11_scripts
  PRE_BUILD
  BYPRODUCTS
    exercise_1.txt
    exercise_2.txt
    exercise_3.txt
    exercise_4.txt
    exercise_5.txt
    exercise_6.txt
    exercise_7.txt
    exercise_8.txt
    exercise_9.txt
    exercise_10.txt
  COMMAND psql -d bangladesh -f all_exercises_sdg11.sql
  COMMENT "running sdg11 scripts"
)
