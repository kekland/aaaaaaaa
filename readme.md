aaaaaaaa

```bash
bazelisk
```

```bash
cd third-party
git clone --recurse-submodules https://github.com/maplibre/maplibre-native --depth 1
```

```bash
./tool/build-libraries.py
```

wip: cmake config
CMakeLists.txt: at the end added:
```cmake
elseif(CMAKE_SYSTEM_NAME STREQUAL Flutter/Android)
    add_subdirectory(${PROJECT_SOURCE_DIR}/platform/flutter/android.cmake)
```