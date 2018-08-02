import QtQuick 2.3

Item {
    width: 480; height: 320
    id: root
    
    Rectangle {
        anchors.fill: parent
        color: "#0f0f0f"
        
        Rectangle {
            anchors.centerIn: parent

            width: parent.width / 3; height: parent.width / 3
            color: "#0f0f0f"

            border.color: "#db3611"
            border.width: 3

            radius: width / 2

            Rectangle {

                Text {
                    anchors.centerIn: parent
                    text: "TEST"
                    font.family: "Helvetica"
                    font.pointSize: 24
                    color: "#d8d9db"
                }

                Image {
                    id: image
                    source: "time_03.png"
                    anchors.centerIn: parent

                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 0
                        to: 360
                        duration: 1000
                    }
                }

                anchors.centerIn: parent

                width: parent.width * 0.88; height: parent.width * 0.88
                color: "#0f0f0f"

                border.color: "#d8d9db"
                border.width: 3

                radius: width / 2
            }
        }
    }
}