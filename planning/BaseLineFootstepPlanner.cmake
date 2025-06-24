if(WITH_ROS_SUPPORT AND $ENV{ROS_VERSION} EQUAL 1)
  AptInstall(
    ros-${ROS_DISTRO}-tf2-eigen
    ros-${ROS_DISTRO}-sbpl
  )
else()
  AddProject(sbpl
    GITHUB sbpl/sbpl
    GIT_TAG origin/master
    CMAKE_ARGS -DCMAKE_POLICY_VERSION_MINIMUM=3.5
  )
  set(BaseLineFootstepPlanner_DEPENDS DEPENDS sbpl)
endif()

AddProject(BaseLineFootstepPlanner
  GITHUB isri-aist/BaseLineFootstepPlanner
  GIT_TAG origin/master
  ${BaseLineFootstepPlanner_DEPENDS}
)
