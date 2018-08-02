import QtQuick 2.3

Item {
    width: 480; height: 320
    focus: true
    Loader { id: pageLoader; source: "test.qml" }
  
    Keys.onPressed: {
        if (event.key == Qt.Key_A) {
            console.log("Pressed Left")
            pageLoader.source = "test.qml"
            event.accepted = true
        } else if (event.key == Qt.Key_D) {
            console.log("Pressed Right")
            pageLoader.source = "clock.qml"
            event.accepted = true
        }
    }

    
}