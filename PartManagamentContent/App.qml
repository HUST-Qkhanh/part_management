// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import PartManagament

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "PartManagament"

    Screen01 {
        id: mainScreen
    }

    // PopupScreen {
    //     id: popupScreen
    //     visible: false
    // }

    // ScrollViewTest {
    //     id: scrollView
    // }

    // Connections {
    //     target: popupScreen // Replace 'parent' with the actual object emitting the signal
    //     onDisableLoader: {
    //         console.log("close loader")
    //         mainScreen.loader.active = false;
    //     }
    // }

}

