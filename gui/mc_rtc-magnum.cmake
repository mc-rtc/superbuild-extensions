AptInstall(libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libassimp-dev)

AddProject(mc_rtc-magnum
  GITHUB arntanguy/mc_rtc-magnum
  GIT_TAG origin/main
  DEPENDS mc_rtc
)
