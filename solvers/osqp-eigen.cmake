include(${CMAKE_CURRENT_LIST_DIR}/osqp.cmake)

AddProject(osqp-eigen
  GITHUB robotology/osqp-eigen
  GIT_TAG origin/master
  DEPENDS osqp
)
