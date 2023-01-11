include(osqp.cmake)

AddProject(osqp-eigen
  GITHUB robotology/osqp-eigen
  GIT_TAG origin/master
  DEPENDS osqp
)
