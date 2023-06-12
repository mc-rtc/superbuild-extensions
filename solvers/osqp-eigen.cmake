include(${CMAKE_CURRENT_LIST_DIR}/osqp.cmake)

AddProject(osqp-eigen
  # FIXME Revert this change when https://github.com/robotology/osqp-eigen/pull/131 (or equivalent) gets merged
  # GITHUB robotology/osqp-eigen
  # GIT_TAG origin/master
  GITHUB gergondet/osqp-eigen
  GIT_TAG origin/update-osqp-v1
  DEPENDS osqp
)
