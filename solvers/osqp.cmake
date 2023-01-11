include(apt-dependencies.cmake)

AddProject(osqp
  GITHUB osqp/osqp
  GIT_TAG origin/master
)
