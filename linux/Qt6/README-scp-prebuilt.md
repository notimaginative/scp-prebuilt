Qt version 6.11.1 built on Ubuntu 24.04 (docker)

[qt-everywhere-src-6.11.1.tar.xz](https://qt.mirror.constant.com/archive/qt/6.11/6.11.1/single/qt-everywhere-src-6.11.1.tar.xz)

Build is optimized for size as much as possible by reducing unneeded components, but might still be improved. All GPL'd components and plugins should be disabled and not included.

Make sure build dependencies are installed:

```bash
apt update
apt install pkg-config xz-utils cmake g++ ninja-build libvulkan-dev libwayland-dev vulkan-validationlayers-dev libgl1-mesa-dev libxcb-glx0-dev libgl1-mesa-glx libxkbcommon-x11-dev libxcb-cursor-dev libxcb-icccm4-dev libxcb-util-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-shm0-dev libxcb-sync-dev libxcb1-dev libxcb-xfixes0-dev libxcb-xkb-dev libx11-xcb-dev
```

Build and install to prebuilt repo:

```bash
cd qt-everywhere-src-6.11.1
mkdir build
cd build
../configure -release -qt-freetype -qt-libjpeg -qt-libpng -qt-zlib -qt-pcre -qt-harfbuzz -qt-doubleconversion -no-openssl -submodules qtbase,qtimageformats,qtdeclarative,qtsvg,qtremoteobjects,qtdoc -skip qtcoap,qtvirtualkeyboard,qtquick3d,qtquick3dphysics,qtquicktimeline,qtnetworkauth,qtmqtt,qtlottie,qthttpserver,qtgrpc,qtgraphs,qtwebengine,qtconnectivity,qtcanvaspainter,qtlocation,qtsensors,qtserialport,qtserialbus,qtwayland -no-framework -- -DQT_FEATURE_wayland_server=OFF -DQT_FEATURE_designer=OFF -DQT_FEATURE_linguist=OFF -DQT_FEATURE_pixeltool=OFF -DQT_FEATURE_androiddeployqt=OFF -DQT_FEATURE_wasmdeployqt=OFF
cmake --build . --parallel
cmake --install . --prefix=`pwd`/install
mv install <prebuilt-repo>/linux/Qt6
```

Post-install cleanup:

```bash
cd <prebuild-repo>/linux/Qt6
rm -f bin/assistant
rm -Rf lib/*.prl lib/*.a
find . -type d -name objects-Release -exec rm -Rf {} \;
find . -name *.so -exec strip --strip-unneeded {} \;
strip --strip-unneeded bin/*
strip --strip-unneeded libexec/*
```

