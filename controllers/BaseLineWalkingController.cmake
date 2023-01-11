include(../control/CentroidalControlCollection.cmake)
include(../planning/BaseLineFootstepPlanner.cmake)

AddProject(BaseLineWalkingController
  GITHUB isri-aist/BaseLineWalkingController
  GIT_TAG origin/master
  DEPENDS mc_rtc CentroidalControlCollection BaseLineFootstepPlanner
)
