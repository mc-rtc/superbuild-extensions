if(WITH_ROS_SUPPORT)
  AptInstall(
    ros-${ROS_DISTRO}-tf2-eigen
    ros-${ROS_DISTRO}-sbpl
  )
endif()

if(NOT WITH_ROS_SUPPORT)
  AddProject(sbpl
    GITHUB sbpl/sbpl
    GIT_TAG origin/master
  )
  set(BaseLineFootstepPlanner_DEPENDS DEPENDS sbpl)
else()
  set(BaseLineFootstepPlanner_DEPENDS)
endif()

AddProject(BaseLineFootstepPlanner
  GITHUB isri-aist/BaseLineFootstepPlanner
  GIT_TAG origin/master
  ${BaseLineFootstepPlanner_DEPENDS}
)
