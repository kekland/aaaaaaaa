cmake -B build \
    -DCMAKE_SYSTEM_NAME="Flutter/Android" \
    -DCMAKE_TOOLCHAIN_FILE="$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake" \
    -DCMAKE_ANDROID_ABI="arm64-v8a" \
    -DCMAKE_ANDROID_NATIVE_API_LEVEL=21 \
    -DCMAKE_BUILD_TYPE=Debug \
    -DMLN_WITH_OPENGL=ON \
    .

cmake --build build -j$(nproc)