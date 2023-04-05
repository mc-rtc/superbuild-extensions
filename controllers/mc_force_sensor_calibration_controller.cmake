include(${CMAKE_CURRENT_LIST_DIR}/../solvers/ceres-solver.cmake)

AddProject(mc_force_sensor_calibration_controller
  GITHUB jrl-umi3218/mc_force_sensor_calibration_controller
  GIT_TAG origin/master
  DEPENDS ceres-solver mc_rtc
)
