include(${CMAKE_CURRENT_LIST_DIR}/osqp.cmake)

AddProject(osqp-eigen
  GITHUB robotology/osqp-eigen
  GIT_TAG origin/master
  CMAKE_ARGS -DOSQP_IS_V1:BOOL=ON
  DEPENDS osqp
)
