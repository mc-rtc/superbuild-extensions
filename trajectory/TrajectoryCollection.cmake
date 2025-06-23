# set optional USE_ROS2 option based on WITH_ROS_SUPPORT and ENV{ROS_VERSION}
set(TRAJECTORY_COLLECTION_CMAKE_ARGS "")
if(WITH_ROS_SUPPORT)
  if($ENV{ROS_VERSION} EQUAL 2)
    set(TRAJECTORY_COLLECTION_CMAKE_ARGS
      CMAKE_ARGS -DUSE_ROS2=ON)
  endif()
endif()

AddProject(TrajectoryCollection
  GITHUB isri-aist/TrajectoryCollection
  GIT_TAG origin/master
  ${TRAJECTORY_COLLECTION_CMAKE_ARGS}
  DEPENDS SpaceVecAlg
)
