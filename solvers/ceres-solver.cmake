AptInstall(libgoogle-glog-dev)

AddProject(ceres-solver
  GITHUB ceres-solver/ceres-solver
  GIT_TAG 2.1.0
  SKIP_TEST
)
