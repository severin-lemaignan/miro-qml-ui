import QtQuick 2.9
import QtQuick.Window 2.3

import Ros 1.0

Window {
    visible: true
    width: 1280
    height: 768
    color: "#000000"
    title: qsTr("MIRO Interactive GUI")

    Image {
        id: miro_top
        x: 901
        y: 157
        width: 241
        height: 213
        source: "miro-top.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: miro_side
        x: 846
        y: 447
        width: 394
        height: 251
        source: "miro-side.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: camera
        x: 43
        y: 65
        width: 715
        height: 440
        fillMode: Image.PreserveAspectFit
        cache: false
        //source: "cam.png"
        source: "image://rosimage/miro/sensors/caml"

        Timer {
                interval: 50
                repeat: true
                running: true
                onTriggered: { camera.source = ""; camera.source = "image://rosimage/miro/sensors/caml" }
            }

        Image {
            id: grid
            anchors.fill: parent
        source: "grid.svg"
        fillMode: Image.PreserveAspectFit
    }
    }
}
