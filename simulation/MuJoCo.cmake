set(MUJOCO_VERSION 3.0.0)

if(UNIX AND NOT APPLE AND NOT EMSCRIPTEN)
  set(MUJOCO_URL "https://github.com/deepmind/mujoco/releases/download/${MUJOCO_VERSION}/mujoco-${MUJOCO_VERSION}-linux")
  if(${CMAKE_SYSTEM_PROCESSOR} MATCHES "arm")
    set(MUJOCO_URL "${MUJOCO_URL}-aarch64.tar.gz")
  else()
    set(MUJOCO_URL "${MUJOCO_URL}-x86_64.tar.gz")
  endif()
  DownloadFile("${MUJOCO_URL}" "${CMAKE_CURRENT_BINARY_DIR}/mujoco/mujoco.tar.gz" "")
  file(ARCHIVE_EXTRACT
        INPUT "${CMAKE_CURRENT_BINARY_DIR}/mujoco/mujoco.tar.gz"
        DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/mujoco"
  )
  set(MUJOCO_ROOT_DIR "${CMAKE_CURRENT_BINARY_DIR}/mujoco/mujoco-${MUJOCO_VERSION}")
else()
  if(NOT DEFINED MUJOCO_ROOT_DIR)
    message(FATAL_ERROR "MuJoCo must be installed manually on your platform, you must then defined MUJOCO_ROOT_DIR")
  endif()
endif()
