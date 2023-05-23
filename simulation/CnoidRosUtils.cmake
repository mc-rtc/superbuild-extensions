if(NOT TARGET choreonoid OR NOT WITH_ROS_SUPPORT)
  message(FATAL_ERROR "CnoidRosUtils requires choreonoid and ROS support")
endif()

AptInstall(ros-${ROS_DISTRO}-eigen-conversions)
AddProject(CnoidRosUtils
  GITHUB isri-aist/CnoidRosUtils
  GIT_TAG origin/master
  DEPENDS choreonoid
)
