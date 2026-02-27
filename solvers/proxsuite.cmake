include(${CMAKE_CURRENT_LIST_DIR}/apt-dependencies.cmake)

AddProject(proxsuite
  GITHUB Simple-Robotics/proxsuite
  GIT_TAG origin/devel
  CMAKE_ARGS -DBUILD_TESTING=OFF -DBUILD_WITH_VECTORIZATION_SUPPORT=OFF
)
