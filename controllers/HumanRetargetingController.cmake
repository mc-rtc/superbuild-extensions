include(${CMAKE_CURRENT_LIST_DIR}/../controllers/BaseLineWalkingController.cmake)

if(ROS_IS_ROS2)
  AddProject(HumanRetargetingController
    GITHUB isri-aist/HumanRetargetingController
    GIT_TAG origin/master
    DEPENDS BaseLineWalkingController
  )
else()
  AddProject(HumanRetargetingController
    GITHUB isri-aist/HumanRetargetingController
    GIT_TAG origin/ros1
    DEPENDS BaseLineWalkingController
  )
endif()