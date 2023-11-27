option(WITH_XSENS_PLUGIN "Build Xsens streaming plugin" OFF)
if(NOT WITH_XSENS_PLUGIN)
  return()
endif()

option(WITH_XSENS_STREAMING "Build Xsens streaming plugin with xsens_streaming/mtsdk (live mode)" ON)
if(WITH_XSENS_STREAMING)
  include(${CMAKE_CURRENT_LIST_DIR}/mtsdk.cmake)
  
  AddProject(xsens_streaming
    GITHUB arntanguy/xsens_streaming
    GIT_TAG origin/master
  )
endif()

set(mc_xsens_plugin_DEPS mc_rtc)
if(WITH_XSENS_STREAMING)
  list(APPEND mc_xsens_plugin_DEPS xsens_streaming)
endif()

AddProject(mc_xsens_plugin
  GITHUB arntanguy/mc_xsens_plugin
  GIT_TAG origin/main
  DEPENDS ${mc_xsens_plugin_DEPS}
)
