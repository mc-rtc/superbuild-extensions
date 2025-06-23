include(${CMAKE_CURRENT_LIST_DIR}/apt-dependencies.cmake)

AddProject(qpmad
  GITHUB asherikov/qpmad
  GIT_TAG origin/master
  CMAKE_ARGS -DCMAKE_POLICY_VERSION_MINIMUM=3.5
)
