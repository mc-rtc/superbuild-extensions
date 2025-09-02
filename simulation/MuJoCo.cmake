if(DEFINED MUJOCO_CMAKE_INCLUDED)
  return()
endif()
set(MUJOCO_CMAKE_INCLUDED TRUE)

set(MUJOCO_VERSION 3.0.0)

if(UNIX AND NOT APPLE AND NOT EMSCRIPTEN)
  set(MUJOCO_ROOT_DIR "${CMAKE_INSTALL_PREFIX}/share/mujoco/mujoco-${MUJOCO_VERSION}")
  if(MUJOCO_ROOT_DIR AND EXISTS ${MUJOCO_ROOT_DIR})
    message(STATUS "MuJoCo is already installed in ${MUJOCO_ROOT_DIR}")
    return()
  endif()

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
  add_custom_target(install_mujoco ALL
    COMMAND ${SUDO_OPT_CMD} ${CMAKE_COMMAND} -E copy_directory
            "${CMAKE_CURRENT_BINARY_DIR}/mujoco"
            "${CMAKE_INSTALL_PREFIX}/share/mujoco"
    COMMENT "Copying MuJoCo to ${MUJOCO_ROOT_DIR}"
  )
else()
  if(NOT DEFINED MUJOCO_ROOT_DIR)
    message(FATAL_ERROR "MuJoCo must be installed manually on your platform, you must then defined MUJOCO_ROOT_DIR")
  endif()
endif()
