if(UNIX AND NOT APPLE AND NOT EMSCRIPTEN)
  execute_process(COMMAND lsb_release -sc OUTPUT_VARIABLE DISTRO OUTPUT_STRIP_TRAILING_WHITESPACE)
  if("${DISTRO}" STREQUAL "bionic")
    set(OPENBLAS_PKG libopenblas-base)
  else()
    set(OPENBLAS_PKG libopenblas0)
  endif()
endif()

set(solvers_APT_DEPENDENCIES
  libmetis-dev
  libgtest-dev
  libopenblas-dev
  ${OPENBLAS_PKG}
  liblapack-dev
  liblapacke-dev
)

AptInstall(${solvers_APT_DEPENDENCIES})
