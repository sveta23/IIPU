import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import FileIO 1.0
Window {

    visible: true
    id: w1
    width: 860
    height: 640
    x: (Screen.width - width) / 2
    y: (Screen.height - height) / 2

    FileIO{
        id: caps
        source: "/home/belka/lab/caps.txt"
        onError: console.log(msg)
    }

    Image{
        anchors.fill: parent
        id: image
        clip: true
        source: "4"
    }

    Item {
        id: item1
        anchors.fill: parent
        Text {
            id: text1
            x: 363
            y: 8
            width: 396
            height: 23
            text: qsTr("Работа с ПУ персонального компьютера")
            anchors.verticalCenterOffset: -203
            anchors.horizontalCenterOffset: 0
            font.strikeout: false
            font.underline: true
            font.italic: true
            font.bold: true
            font.family: "Arial"
            font.pixelSize: 19
            Button {
                width: 379
                height: 27
                opacity: 0
                onClicked: {
                    w2.visible = true;
                }

            }
        }

        Column{
            id: unt
            x: 644
            y: 66
            visible: false
            clip: false
            spacing: 5
            Button {
                text: qsTr("Unit1")
                opacity: 0.5
                clip: true
                onClicked: {
                    item2.visible = true;
                    unt.visible = false;
                    colst.visible = false;
                }

            }
            Button {
                text: qsTr("Unit2")
                opacity: 0.5
                clip: true
                onClicked: {
                    unt.visible = false;
                    colst.visible = false;
                    item4.visible = true;
                }
            }
            Button {
                text: qsTr("Unit3")
                opacity: 0.5
                clip: true
                onClicked: {
                    unt.visible = false;
                    colst.visible = false;
                    item6.visible = true;

                }
            }
            Button {
                text: qsTr("Unit4")
                opacity: 0.5
                clip: true
                onClicked: {
                    unt.visible = false;
                    colst.visible = false;
                    item5.visible = true;
                }
            }
        }

        Button {
            x: 765
            y: 8
            width: 108
            height: 41
            clip: true
            style: ButtonStyle {
                background: Image {
                    fillMode: Image.PreserveAspectFit
                    source: "5"
                }
            }
            onClicked: {
                colst.visible = true;
                item2.visible = false;
                item4.visible = false;
                item5.visible = false;
                item6.visible = false;
                item3.visible = false;
            }

        }

        Column{
            id: colst
            x: 735
            y: 66
            width: 117
            height: 123
            visible: false
            spacing: 5
            Button {
                width: 112
                text: qsTr("Задания")
                opacity: 0.6
                clip: true
                onClicked: {
                    unt.visible = true;
                }

            }
            Button {
                width: 112
                text: qsTr("Дизайн")
                opacity: 0.6
                clip: true
                onClicked: {
                    colst1.visible = true;
                }

            }
            Button {
                width: 112
                text: qsTr("Справка")
                opacity: 0.6
                clip: true
                onClicked: {
                    item3.visible = true;
                    colst.visible = false;
                }
            }
        }

        Item {
            id: item2
            x: 149
            y: 97
            width: 551
            height: 447
            visible: false

            FileIO {
                id: myFile
                source: "dmesg.txt"
            }

            Image{
                anchors.fill: parent
                clip: true
                source: "6"
            }

            Button{
                opacity: 0.0
                anchors.fill: parent
                onClicked: {
                    item2.visible = false;
                }
            }
            Text {
                id: text3
                x: 24
                y: 19
                width: 100
                height: 19
                text: qsTr("Описание свойства стиля:")
                font.pixelSize: 12
            }

            Text {
                id: text4
                x: 24
                y: 44
                width: 100
                height: 23
                text: qsTr("Архитектура")
                font.pixelSize: 12
            }

            Text {
                id: text5
                x: 24
                y: 87
                width: 143
                height: 23
                text: qsTr("Вывод содержимого dmesg.txt")
                font.pixelSize: 12
            }

            TextArea {
                id: text6
                x: 24
                y: 108
                width: 506
                height: 311
                text: myFile.read()
                font.pixelSize: 12
            }
        }

        Column {
            id: colst1
            x: 612
            y: 97
            width: 117
            height: 123
            Button {
                width: 112
                text: qsTr("Гавань")
                opacity: 0.6
                clip: true
                onClicked: {
                    image.source = "1";
                    text4.text = "Гавань";
                    colst1.visible = false;
                    colst.visible = false;
                }
            }

            Button {
                width: 112
                text: qsTr("Цветы")
                opacity: 0.6
                clip: true
                onClicked: {
                    image.source = "2";
                    text4.text = "Цветы";
                    colst1.visible = false;
                    colst.visible = false;
                }
            }

            Button {
                width: 112
                text: qsTr("Кот")
                opacity: 0.6
                clip: true
                onClicked: {
                    image.source = "3";
                    text4.text = "Кот";
                    colst1.visible = false;
                    colst.visible = false;
                }
            }

            Button {
                width: 112
                text: qsTr("Архитектура")
                opacity: 0.6
                clip: true
                onClicked: {
                    image.source = "4";
                    colst.visible = false;
                    text4.text = "Архитектура";
                    colst1.visible = false;
                    colst.visible = false;
                }
            }
            spacing: 5
            visible: false
        }

        Item {
            id: item4
            x: 141
            y: 105
            width: 551
            height: 447
            FileIO {
                id: myFile1
                source: ""
            }

            Image {
                clip: true
                source: "6"
                anchors.fill: parent
            }

            Button {
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    item4.visible = false;
                }
            }

            TextArea {
                id: text10
                x: 24
                y: 108
                width: 506
                height: 311
                text: qsTr("")
                font.pixelSize: 12
            }

            Button {
                id: button1
                x: 24
                y: 27
                width: 162
                height: 34
                text: qsTr("/proc/devices")
                onClicked: {
                    myFile1.source = "/proc/devices"
                    text10.text = myFile1.read();
                }

            }

            Button {
                id: button2
                x: 196
                y: 27
                width: 162
                height: 34
                text: qsTr("/proc/cpuinfo")
                onClicked: {
                    myFile1.source = "/proc/cpuinfo"
                    text10.text = myFile1.read();
                }
            }

            Button {
                id: button3
                x: 368
                y: 27
                width: 162
                height: 34
                text: qsTr("/proc/meminfo")
                onClicked: {
                    myFile1.source = "/proc/meminfo"
                    text10.text = myFile1.read();
                }
            }

            visible: false
        }

        Item {
            id: item5
            x: 137
            y: 111
            width: 551
            height: 447

            FileIO {
                id: myFile2
                source: ""
            }

            Image {
                source: "6"
                clip: true
                anchors.fill: parent
            }

            Button {
                opacity: 0
                anchors.fill: parent
                onClicked: {
                    item5.visible = false;
                }
            }

            TextArea {
                id: text11
                x: 24
                y: 108
                width: 506
                height: 311
                text: qsTr("")
                font.pixelSize: 12
            }

            Button {
                id: button4
                x: 24
                y: 27
                width: 162
                height: 34
                text: qsTr("serial")
                onClicked: {
                    myFile2.source = "/home/belka/lab/serial.txt";
                    text11.text = myFile2.read();
                }
            }

            Button {
                id: button5
                x: 196
                y: 27
                width: 162
                height: 34
                text: qsTr("info RS-232")
                onClicked: {
                    myFile2.source = "/home/belka/lab/info.txt";
                    text11.text = myFile2.read();
                }
            }

            visible: false
        }

        Item {
            id: item6
            x: 139
            y: 107
            width: 551
            height: 447
            FileIO {
                id: myFile3
                source: ""
            }

            Image {
                clip: true
                anchors.fill: parent
                source: "6"
            }

            Button {
                anchors.fill: parent
                opacity: 0
                onClicked: {
                    item6.visible = false;
                }
            }

            Text {
                id: text7
                x: 24
                y: 24
                width: 487
                height: 40
                text: qsTr("Наведите курсор на окно ввода и нажмите стрелку вверх,
после чего следуйте указаниям.
(клавиша 2 - инверсия индикаторов, клавиша 1 - вкл. и выкл. индикаторов)")
                font.pixelSize: 12
            }

            TextArea {
                id: text12
                x: 24
                y: 77
                width: 506
                height: 342
                Keys.onPressed: {
                    text = event.key

                    if(text == "16777235"){
                        text = "Нажмите  клавишу  включения  любого  индикатора
клавиатуры  "
                      indikator.checked = true

                    }

                 if(text == "16777252"  && indikator.checked == true)
                        text = caps.lab3zd2()

                  if(text == "16777253"  && indikator.checked == true)
                        text = caps.lab3zd22()

                    if(text == "50"){
                        text="индикаторы переключены"
                        text = caps.lab3zd1()
                    }
                    if(text == "49")
                    {text="индикаторы выключены"
                        text = caps.lab3zd31()
                    }
                }
                Button {
                    id: indikator
                    anchors.fill: parent
                    opacity: 0
                    visible: false
                    checkable: true
                }
            }

            visible: false
        }
    }

    Item {
        id: item3
        x: 260
        y: 206
        width: 348
        height: 230
        visible: false
        Image{
            anchors.bottomMargin: 21
            anchors.fill: parent
            clip: true
            source: "6"
        }
        Button{
            opacity: 0.0
            anchors.fill: parent
            onClicked: {
                item3.visible = false;
            }
        }
        Text {

            id: text2
            x: -5
            y: -8
            width: 300
            height: 130
            text: " Проект для работы с периферийными\n устройствами персонального компьютера\n\n Разработчики: \n \n  Кононович Павел \n  Ждан Светлана \n  Николайчиков Артем  \n \n Обратная связь:  unicorn@gmail.com \n\n                           ©Unicorn 2019"
            anchors.leftMargin: 8
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.fill: parent
            clip: false
            font.pixelSize: 14


        }
    }

}

