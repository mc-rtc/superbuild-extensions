include(${CMAKE_CURRENT_LIST_DIR}/../control/CentroidalControlCollection.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../control/ForceControlCollection.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../planning/BaseLineFootstepPlanner.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../trajectory/TrajectoryCollection.cmake)

AddProject(BaseLineWalkingController
  GITHUB isri-aist/BaseLineWalkingController
  GIT_TAG origin/master
  DEPENDS CentroidalControlCollection BaseLineFootstepPlanner ForceControlCollection TrajectoryCollection
)
