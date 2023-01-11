superbuild-extensions
==

This repository contains a set of common extensions for [mc-rtc-superbuild](https://github.com/mc-rtc/mc-rtc-superbuild)

Usage
--

1. Clone to the extensions folder of mc-rtc-superbuild
2. Create a `local.cmake` file inside the extensions folder
3. Add the packages from this extension you want to include in your build

For example:
```cmake
include(superbuild-extensions/controllers/baseline-walking-controller.cmake)
include(superbuild-extensions/interfaces/mc_mujoco.cmake)
```
