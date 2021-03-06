/***************************************************************************
**
** Copyright (c) 2012, Tarek Galal <tarek@wazapp.im>
**
** This file is part of Wazapp, an IM application for Meego Harmattan
** platform that allows communication with Whatsapp users.
**
** Wazapp is free software: you can redistribute it and/or modify it under
** the terms of the GNU General Public License as published by the
** Free Software Foundation, either version 2 of the License, or
** (at your option) any later version.
**
** Wazapp is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
** See the GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with Wazapp. If not, see http://www.gnu.org/licenses/.
**
****************************************************************************/
import QtQuick 1.1
import com.nokia.meego 1.0

Rectangle{
    width:parent.width
    height:100;
   // anchors.top:parent.top
    property alias title:pageTitle.text
    color:"transparent"

    Image{
        id:wazapp_icon
        anchors.left: parent.left
		anchors.leftMargin: 12
        anchors.verticalCenter: parent.verticalCenter
        height:72
        width:height
		smooth: true
        source:'pics/wazapp80.png'
    }

    Label{
        id:mainTitle
        text: "Wazapp"
        color:"#27a01b"
        font.pixelSize: 32
        y: 12
        anchors.left: wazapp_icon.right
        anchors.leftMargin: 12
    }

    Label{
        id: pageTitle
        color: theme.inverted? "white" : "darkgray"
        anchors.left: wazapp_icon.right
        anchors.leftMargin: 12
        font.pixelSize: 24
        y: 52		
    }

	Rectangle {
		x: 0; y: 98
		width: parent.width
		height: 1
		color: "gray"
		opacity: 0.6
	}
    /*Separator{
        bottom_margin: 5
        top_margin: 10

        anchors.bottom: parent.bottom
        width:parent.width

    }*/
}
