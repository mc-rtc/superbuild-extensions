include(${CMAKE_CURRENT_LIST_DIR}/apt-dependencies.cmake)

AddProject(qpOASES
  GITHUB coin-or/qpOASES
  GIT_TAG origin/master
  CMAKE_ARGS -DBUILD_SHARED_LIBS=ON -DQPOASES_BUILD_EXAMPLES=OFF
)
