include(apt-dependencies.cmake)

AddProject(jrl-qp
  GITHUB jrl-umi3218/jrl-qp
  GIT_TAG origin/master
  CMAKE_ARGS -DBUILD_BENCHMARKS=OFF
)
