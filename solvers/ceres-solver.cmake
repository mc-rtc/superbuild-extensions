AptInstall(libgoogle-glog-dev)

AddProject(ceres-solver
  GITHUB ceres-solver/ceres-solver
  GIT_TAG 2.1.0
  CMAKE_ARGS -DBUILD_BENCHMARKS:BOOL=OFF -DBUILD_EXAMPLES:BOOL=OFF
  SKIP_TEST
)
