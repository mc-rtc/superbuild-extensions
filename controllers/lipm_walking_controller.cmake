include(${CMAKE_CURRENT_LIST_DIR}/../control/copra.cmake)

AddProject(lipm_walking_controller
  GITHUB jrl-umi3218/lipm_walking_controller
  GIT_TAG origin/master
  DEPENDS copra mc_state_observation
)
