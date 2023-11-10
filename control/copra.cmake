set(copra_DEPS eigen-quadprog eigen-qld)
if(TARGET eigen-lssol)
  list(APPEND copra_DEPS eigen-lssol)
endif()

AddProject(copra
  GITHUB jrl-umi3218/copra
  GIT_TAG origin/master
  CMAKE_ARGS -DPYTHON_BINDING=OFF
  DEPENDS ${copra_DEPS}
)
