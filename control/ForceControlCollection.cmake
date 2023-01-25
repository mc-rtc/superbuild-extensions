include(${CMAKE_CURRENT_LIST_DIR}/../solvers/QpSolverCollection.cmake)

AddProject(ForceControlCollection
  GITHUB isri-aist/ForceControlCollection
  GIT_TAG origin/master
  DEPENDS QpSolverCollection mc_rtc
)
