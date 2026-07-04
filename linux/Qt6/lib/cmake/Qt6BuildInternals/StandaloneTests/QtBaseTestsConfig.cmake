# Copyright (C) 2024 The Qt Company Ltd.
# SPDX-License-Identifier: BSD-3-Clause

set(__standalone_parts_qt_packages_args
    QT_MODULE_PACKAGES
        ZlibPrivate
        Core
        PngPrivate
        JpegPrivate
        FreetypePrivate
        HarfbuzzPrivate
        Concurrent
        Sql
        Network
        Xml
        DBus
        Gui
        OpenGL
        Widgets
        OpenGLWidgets
        DeviceDiscoverySupportPrivate
        FbSupportPrivate
        InputSupportPrivate
        TestInternalsPrivate
        Test
        PrintSupport
        XcbQpaPrivate
        EglFSDeviceIntegrationPrivate
        WaylandGlobalPrivate
        WaylandClient
        WlShellIntegrationPrivate

)
qt_internal_find_standalone_parts_qt_packages(__standalone_parts_qt_packages_args)
