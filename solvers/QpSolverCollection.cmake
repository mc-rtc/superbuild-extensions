include(${CMAKE_CURRENT_LIST_DIR}/jrl-qp.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/qpOASES.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/osqp-eigen.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/nasoq.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/hpipm.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/proxsuite.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/qpmad.cmake)

set(QP_SOLVER_COLLECTION_DEPENDS
  eigen-qld
  eigen-quadprog
  jrl-qp
  qpOASES
  osqp-eigen
  nasoq
  hpipm
  proxsuite
  qpmad
)
if(WITH_LSSOL)
  set(NOT_WITH_LSSOL OFF)
  list(APPEND QP_SOLVER_COLLECTION_DEPENDS eigen-lssol)
else()
  set(NOT_WITH_LSSOL ON)
endif()

AddProject(QpSolverCollection
  GITHUB isri-aist/QpSolverCollection
  GIT_TAG origin/master
  CMAKE_ARGS -DDEFAULT_ENABLE_ALL=ON -DENABLE_LSSOL=${WITH_LSSOL} -DSKIP_PRIVATE_SOLVER_TEST=${NOT_WITH_LSSOL} -DFORCE_ALL_SOLVER_TEST=ON
  DEPENDS ${QP_SOLVER_COLLECTION_DEPENDS}
)
