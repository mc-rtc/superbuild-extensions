if(WITH_ROS_SUPPORT)
  set(ROS_SUPPORT_PKGS
    ros-${ROS_DISTRO}-tf2-eigen
  )
endif()

if(NOT WITH_ROS_SUPPORT)
  AddProject(sbpl
    GITHUB sbpl/sbpl
    GIT_TAG origin/master
    CMAKE_ARGS -DCMAKE_POLICY_VERSION_MINIMUM=3.5
    APT_DEPENDENCIES ${ROS_SUPPORT_PKGS}
    DEPENDS sbpl
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
