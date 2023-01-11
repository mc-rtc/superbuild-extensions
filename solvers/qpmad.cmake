include(${CMAKE_CURRENT_LIST_DIR}/apt-dependencies.cmake)

AddProject(qpmad
  GITHUB asherikov/qpmad
  GIT_TAG origin/master
)
