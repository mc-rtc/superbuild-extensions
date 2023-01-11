include(../simulation/MuJoCo.cmake)

AddProject(mc_mujoco
  GITHUB rohanpsingh/mc_mujoco
  GIT_TAG origin/main
  CMAKE_ARGS -DMUJOCO_ROOT_DIR=${MUJOCO_ROOT_DIR}
  DEPENDS mc_rtc
)
