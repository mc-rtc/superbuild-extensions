function(AddCnoidRosUtils)
  if(TARGET choreonoid AND WITH_ROS_SUPPORT)
    AptInstall(ros-${ROS_DISTRO}-eigen-conversions)
    AddProject(CnoidRosUtils
      GITHUB isri-aist/CnoidRosUtils
      GIT_TAG origin/master
      DEPENDS choreonoid
    )
  endif()
endfunction()

cmake_language(DEFER CALL AddCnoidRosUtils)
