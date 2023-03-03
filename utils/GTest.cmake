if(UNIX AND NOT APPLE AND NOT EMSCRIPTEN)
  execute_process(COMMAND lsb_release -sc OUTPUT_VARIABLE DISTRO OUTPUT_STRIP_TRAILING_WHITESPACE)
  if("${DISTRO}" STREQUAL "bionic")
    AddProject(googletest
      GITHUB google/googletest
      GIT_TAG release-1.12.1
      SKIP_TEST
    )
  endif()
endif()
