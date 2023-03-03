include(${CMAKE_CURRENT_LIST_DIR}/../controllers/BaseLineWalkingController.cmake)

function(AddLocomanipController)
  set(DEPS BaseLineWalkingController)
  if(TARGET CnoidRosUtils)
    list(APPEND DEPS CnoidRosUtils)
  endif()
  AddProject(LocomanipController
    GITHUB isri-aist/LocomanipController
    GIT_TAG origin/master
    DEPENDS ${DEPS}
  )
endfunction()

cmake_language(DEFER CALL AddLocomanipController)
