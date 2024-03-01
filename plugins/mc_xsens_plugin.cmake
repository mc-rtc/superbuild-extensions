option(WITH_XSENS_STREAMING "Build Xsens streaming plugin with xsens_streaming (live mode) - MTSDK must be installed manually" ON)
if(WITH_XSENS_STREAMING)
  AddProject(xsens_streaming
    GITHUB arntanguy/xsens_streaming
    GIT_TAG origin/main
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
