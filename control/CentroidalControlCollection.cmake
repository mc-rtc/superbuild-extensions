include(${CMAKE_CURRENT_LIST_DIR}/ForceControlCollection.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/NMPC.cmake)

AddProject(CentroidalControlCollection
  GITHUB isri-aist/CentroidalControlCollection
  GIT_TAG origin/master
  DEPENDS ForceControlCollection NMPC
)
