include(${CMAKE_CURRENT_LIST_DIR}/../controllers/BaseLineWalkingController.cmake)

set(LMC_DEPS BaseLineWalkingController)
if(TARGET CnoidRosUtils)
  list(APPEND LMC_DEPS CnoidRosUtils)
endif()
AddProject(LocomanipController
  GITHUB isri-aist/LocomanipController
  GIT_TAG origin/master
  DEPENDS ${LMC_DEPS}
)
