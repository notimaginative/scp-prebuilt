Qt version 6.11.1 built with Visual Studio 2022 & CMake 4.2.3

[qt-everywhere-src-6.11.1.tar.xz](https://qt.mirror.constant.com/archive/qt/6.11/6.11.1/single/qt-everywhere-src-6.11.1.tar.xz)

Build is optimized for size as much as possible by reducing unneeded components, but might still be improved. All GPL'd components and plugins should be disabled and not included.

NOTE: The Windows version has path limits which can break builds so it's recommended to follow Qt guidelines and extract to a short path that does not contain spaces or non-ASCII characters. (i.e., use something like `C:\Qt\6.11.1\src`)

NOTE: If compiling for ARM64 on an x64 host you must build and install the x64 version first and add `-external-hostbindir <prebuilt-repo>\win64\Qt6\bin` to the start of the `configure.bat` options in order to build for ARM64.

WARNING: You will need at least 75 GiB of free space to build and install Qt6!!

Build and install to prebuilt repo (with "ARM64 Native Tools Command Prompt"):
```bash
cd /d C:\Qt\6.11.1\src
mkdir build
cd build
..\configure.bat -debug-and-release -prefix %cd%\install -qt-freetype -qt-libjpeg -qt-libpng -qt-zlib -qt-pcre -qt-harfbuzz -qt-doubleconversion -no-openssl -submodules qtbase,qtimageformats,qtdeclarative,qtsvg,qtremoteobjects,qtdoc -skip qtcoap,qtvirtualkeyboard,qtquick3d,qtquick3dphysics,qtquicktimeline,qtnetworkauth,qtmqtt,qtlottie,qthttpserver,qtgrpc,qtgraphs,qtwebengine,qtconnectivity,qtcanvaspainter,qtlocation,qtsensors,qtserialport,qtserialbus,qtwayland -no-framework -- -DQT_FEATURE_wayland_server=OFF -DQT_FEATURE_designer=OFF -DQT_FEATURE_linguist=OFF -DQT_FEATURE_pixeltool=OFF -DQT_FEATURE_androiddeployqt=OFF -DQT_FEATURE_wasmdeployqt=OFF
cmake --build . --parallel
cmake --install . --config Release
cmake --install . --config Debug
robocopy install <prebuilt-repo>\winarm64\Qt6 /e /move
```

Post-install cleanup:
```bash
cd /d <prebuilt-repo>\winarm64\Qt6
del /q bin\assistant.*
rmdir /s /q bin\Debug
del /q lib\*.prl
for /f "delims=" %G in ('dir /b /s /ad "objects-*"') do rmdir /s /q "%G"
robocopy . <out-of-repo-path>\winarm64\Qt6-pdbs *.pdb /s /mov

```

