include(${CMAKE_CURRENT_LIST_DIR}/apt-dependencies.cmake)

AddProject(blasfeo
  GITHUB giaf/blasfeo
  GIT_TAG origin/master
  CMAKE_ARGS -DBUILD_SHARED_LIBS=ON -DTARGET=X64_AUTOMATIC -DBLASFEO_EXAMPLES=OFF
)
