Qt version 6.11.1 built on macOS 26.5 (arm64)

[qt-everywhere-src-6.11.1.tar.xz](https://qt.mirror.constant.com/archive/qt/6.11/6.11.1/single/qt-everywhere-src-6.11.1.tar.xz)

Build is optimized for size as much as possible by reducing unneeded components, but might still be improved. All GPL'd components and plugins should be disabled and not included.

Deployment target is macOS 13.0 (Ventura) per official build documentation.

Build and install to prebuilt repo:
```bash
cd qt-everywhere-src-6.11.1
mkdir build
cd build
../configure -release -qt-libjpeg -qt-libpng -qt-zlib -qt-pcre -qt-harfbuzz -qt-doubleconversion -no-openssl -submodules qtbase,qtimageformats,qtdeclarative,qtsvg,qtremoteobjects,qtdoc -skip qtcoap,qtvirtualkeyboard,qtquick3d,qtquick3dphysics,qtquicktimeline,qtnetworkauth,qtmqtt,qtlottie,qthttpserver,qtgrpc,qtgraphs,qtwebengine,qtconnectivity,qtcanvaspainter,qtlocation,qtsensors,qtserialport,qtserialbus,qtwayland -no-framework -- -DQT_FEATURE_wayland_server=OFF -DQT_FEATURE_designer=OFF -DQT_FEATURE_linguist=OFF -DQT_FEATURE_pixeltool=OFF -DQT_FEATURE_androiddeployqt=OFF -DQT_FEATURE_wasmdeployqt=OFF -DCMAKE_OSX_ARCHITECTURES="x86_64;arm64" -DCMAKE_OSX_DEPLOYMENT_TARGET="13.0"
cmake --build . --parallel
cmake --install . --prefix=`pwd`/install
mv install/usr/local/Qt-6.11.1 <prebuilt-repo>/mac/Qt6
```

Post-install cleanup:
```bash
cd <prebuild-repo>/mac/Qt6
rm -Rf bin/*.app
rm -Rf lib/*.prl lib/*.a lib/objects-Release
strip -x bin/*
strip -x lib/*
strip -x libexec/*
```

