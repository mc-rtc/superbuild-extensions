include(${CMAKE_CURRENT_LIST_DIR}/../controllers/BaseLineWalkingController.cmake)

AddProject(MultiContactController
  GITHUB isri-aist/MultiContactController
  GIT_TAG origin/master
  DEPENDS BaseLineWalkingController
)
