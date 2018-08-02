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

                Image {
                    id: minutes
                    source: "time_03.png"
                    anchors.centerIn: parent

                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 0
                        to: 360
                        duration: 60000
                    }
                }

                Image {
                    id: hours
                    source: "time_04.png"
                    anchors.centerIn: parent

                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 0
                        to: 360
                        duration: 60000 * 2// * 60
                    }
                }

                Image {
                    id: seconds
                    source: "time_02.png"
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