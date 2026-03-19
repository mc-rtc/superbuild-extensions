AddProject(mujoco
  GITHUB google-deepmind/mujoco
  GIT_TAG 3.3.6
  CMAKE_ARGS -DMUJOCO_BUILD_TESTS=OFF
  APT_DEPENDENCIES libglfw3 libcereal-dev libspdlog-dev libxkbcommon-dev 
)
