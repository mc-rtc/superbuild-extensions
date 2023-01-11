include(solvers/QpSolverCollection.cmake)
include(NMPC.cmake)

AddProject(CentroidalControlCollection
  GITHUB isri-aist/CentroidalControlCollection
  GIT_TAG origin/master
  DEPENDS QpSolverCollection NMPC
)
