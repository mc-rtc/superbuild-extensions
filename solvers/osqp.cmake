include(${CMAKE_CURRENT_LIST_DIR}/apt-dependencies.cmake)

AddProject(osqp
  GITHUB osqp/osqp
  GIT_TAG origin/master
)
