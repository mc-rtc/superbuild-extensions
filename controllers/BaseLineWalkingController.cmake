include(${CMAKE_CURRENT_LIST_DIR}/../control/CentroidalControlCollection.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../control/ForceControlCollection.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../planning/BaseLineFootstepPlanner.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/../trajectory/TrajectoryCollection.cmake)

set(BASELINE_WALKING_CONTROLLER_CMAKE_ARGS "")
if(WITH_ROS_SUPPORT)
  if($ENV{ROS_VERSION} EQUAL 2)
    set(BASELINE_WALKING_CONTROLLER_CMAKE_ARGS
      CMAKE_ARGS -DUSE_ROS2=ON)
  endif()
endif()

AddProject(BaseLineWalkingController
  GITHUB isri-aist/BaseLineWalkingController
  GIT_TAG origin/master
  DEPENDS CentroidalControlCollection BaseLineFootstepPlanner ForceControlCollection TrajectoryCollection
  ${BASELINE_WALKING_CONTROLLER_CMAKE_ARGS}
)
