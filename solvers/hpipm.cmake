include(blasfeo.cmake)

AddProject(hpipm
  GITHUB giaf/hpipm
  GIT_TAG origin/master
  CMAKE_ARGS -DBUILD_SHARED_LIBS=ON -DHPIPM_TESTING=OFF -DBLASFEO_PATH=${CMAKE_INSTALL_PREFIX}
  DEPENDS blasfeo
)
