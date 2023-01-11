include(${CMAKE_CURRENT_LIST_DIR}/../control/CentroidalControlCollection.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../planning/BaseLineFootstepPlanner.cmake)

AddProject(BaseLineWalkingController
  GITHUB isri-aist/BaseLineWalkingController
  GIT_TAG origin/master
  DEPENDS mc_rtc CentroidalControlCollection BaseLineFootstepPlanner
)
