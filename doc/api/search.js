"use strict";
var items = [
{"dguihub.registry" : "dguihub/registry.html"},
{"dguihub.progressbar" : "dguihub/progressbar.html"},
{"dguihub.colordialog" : "dguihub/colordialog.html"},
{"dguihub.button" : "dguihub/button.html"},
{"dguihub.button.Button" : "dguihub/button/Button.html"},
{"dguihub.button.Button.dialogResult" : "dguihub/button/Button.html#dialogResult"},
{"dguihub.button.Button.dialogResult" : "dguihub/button/Button.html#dialogResult"},
{"dguihub.button.CheckBox" : "dguihub/button/CheckBox.html"},
{"dguihub.button.RadioButton" : "dguihub/button/RadioButton.html"},
{"dguihub.richtextbox" : "dguihub/richtextbox.html"},
{"dguihub.canvas" : "dguihub/canvas.html"},
{"dguihub.canvas.FontStyle" : "dguihub/canvas/FontStyle.html"},
{"dguihub.canvas.ImageType" : "dguihub/canvas/ImageType.html"},
{"dguihub.canvas.GradientFillRectMode" : "dguihub/canvas/GradientFillRectMode.html"},
{"dguihub.canvas.EdgeType" : "dguihub/canvas/EdgeType.html"},
{"dguihub.canvas.EdgeMode" : "dguihub/canvas/EdgeMode.html"},
{"dguihub.canvas.HatchStyle" : "dguihub/canvas/HatchStyle.html"},
{"dguihub.canvas.PenStyle" : "dguihub/canvas/PenStyle.html"},
{"dguihub.canvas.TextFormatFlags" : "dguihub/canvas/TextFormatFlags.html"},
{"dguihub.canvas.TextAlignment" : "dguihub/canvas/TextAlignment.html"},
{"dguihub.canvas.TextTrimming" : "dguihub/canvas/TextTrimming.html"},
{"dguihub.canvas.BitmapCopyMode" : "dguihub/canvas/BitmapCopyMode.html"},
{"dguihub.canvas.BitmapBit" : "dguihub/canvas/BitmapBit.html"},
{"dguihub.canvas.BitmapBit.blue" : "dguihub/canvas/BitmapBit.html#blue"},
{"dguihub.canvas.BitmapBit.green" : "dguihub/canvas/BitmapBit.html#green"},
{"dguihub.canvas.BitmapBit.red" : "dguihub/canvas/BitmapBit.html#red"},
{"dguihub.canvas.BitmapBit.alpha" : "dguihub/canvas/BitmapBit.html#alpha"},
{"dguihub.canvas.BitmapData" : "dguihub/canvas/BitmapData.html"},
{"dguihub.canvas.BitmapData.info" : "dguihub/canvas/BitmapData.html#info"},
{"dguihub.canvas.BitmapData.imageSize" : "dguihub/canvas/BitmapData.html#imageSize"},
{"dguihub.canvas.BitmapData.bitsCount" : "dguihub/canvas/BitmapData.html#bitsCount"},
{"dguihub.canvas.BitmapData.bits" : "dguihub/canvas/BitmapData.html#bits"},
{"dguihub.canvas.Color" : "dguihub/canvas/Color.html"},
{"dguihub.canvas.Color.colorref" : "dguihub/canvas/Color.html#colorref"},
{"dguihub.canvas.Color.valid" : "dguihub/canvas/Color.html#valid"},
{"dguihub.canvas.Color.invalid" : "dguihub/canvas/Color.html#invalid"},
{"dguihub.canvas.Color.fromCOLORREF" : "dguihub/canvas/Color.html#fromCOLORREF"},
{"dguihub.canvas.Canvas" : "dguihub/canvas/Canvas.html"},
{"dguihub.core.wincomp" : "dguihub/core/wincomp.html"},
{"dguihub.core.controls.scrollablecontrol" : "dguihub/core/controls/scrollablecontrol.html"},
{"dguihub.core.controls.reflectedcontrol" : "dguihub/core/controls/reflectedcontrol.html"},
{"dguihub.core.controls.abstractbutton" : "dguihub/core/controls/abstractbutton.html"},
{"dguihub.core.controls.abstractbutton.CheckState" : "dguihub/core/controls/abstractbutton/CheckState.html"},
{"dguihub.core.controls.abstractbutton.AbstractButton" : "dguihub/core/controls/abstractbutton/AbstractButton.html"},
{"dguihub.core.controls.abstractbutton.CheckedButton" : "dguihub/core/controls/abstractbutton/CheckedButton.html"},
{"dguihub.core.controls.abstractbutton.CheckedButton.checkChanged" : "dguihub/core/controls/abstractbutton/CheckedButton.html#checkChanged"},
{"dguihub.core.controls.abstractbutton.CheckedButton.checked" : "dguihub/core/controls/abstractbutton/CheckedButton.html#checked"},
{"dguihub.core.controls.abstractbutton.CheckedButton.checked" : "dguihub/core/controls/abstractbutton/CheckedButton.html#checked"},
{"dguihub.core.controls.containercontrol" : "dguihub/core/controls/containercontrol.html"},
{"dguihub.core.controls.ownerdrawcontrol" : "dguihub/core/controls/ownerdrawcontrol.html"},
{"dguihub.core.controls.textcontrol" : "dguihub/core/controls/textcontrol.html"},
{"dguihub.core.controls.subclassedcontrol" : "dguihub/core/controls/subclassedcontrol.html"},
{"dguihub.core.controls.control" : "dguihub/core/controls/control.html"},
{"dguihub.core.geometry" : "dguihub/core/geometry.html"},
{"dguihub.core.tag" : "dguihub/core/tag.html"},
{"dguihub.core.winapi" : "dguihub/core/winapi.html"},
{"dguihub.core.collection" : "dguihub/core/collection.html"},
{"dguihub.core.message" : "dguihub/core/message.html"},
{"dguihub.core.interfaces.ilayoutcontrol" : "dguihub/core/interfaces/ilayoutcontrol.html"},
{"dguihub.core.interfaces.idisposable" : "dguihub/core/interfaces/idisposable.html"},
{"dguihub.core.windowclass" : "dguihub/core/windowclass.html"},
{"dguihub.core.charset" : "dguihub/core/charset.html"},
{"dguihub.core.charset.createWindowEx" : "dguihub/core/charset.html#createWindowEx"},
{"dguihub.core.handle" : "dguihub/core/handle.html"},
{"dguihub.core.exception" : "dguihub/core/exception.html"},
{"dguihub.core.utils" : "dguihub/core/utils.html"},
{"dguihub.core.menu.abstractmenu" : "dguihub/core/menu/abstractmenu.html"},
{"dguihub.core.dialogs.commondialog" : "dguihub/core/dialogs/commondialog.html"},
{"dguihub.core.dialogs.dialogresult" : "dguihub/core/dialogs/dialogresult.html"},
{"dguihub.core.events.eventargs" : "dguihub/core/events/eventargs.html"},
{"dguihub.core.events.controlcodeeventargs" : "dguihub/core/events/controlcodeeventargs.html"},
{"dguihub.core.events.painteventargs" : "dguihub/core/events/painteventargs.html"},
{"dguihub.core.events.event" : "dguihub/core/events/event.html"},
{"dguihub.core.events.mouseeventargs" : "dguihub/core/events/mouseeventargs.html"},
{"dguihub.core.events.scrolleventargs" : "dguihub/core/events/scrolleventargs.html"},
{"dguihub.core.events.keyeventargs" : "dguihub/core/events/keyeventargs.html"},
{"dguihub.messagebox" : "dguihub/messagebox.html"},
{"dguihub.messagebox.MsgBoxButtons" : "dguihub/messagebox/MsgBoxButtons.html"},
{"dguihub.messagebox.MsgBoxIcons" : "dguihub/messagebox/MsgBoxIcons.html"},
{"dguihub.messagebox.MsgBox" : "dguihub/messagebox/MsgBox.html"},
{"dguihub.messagebox.MsgBox.show" : "dguihub/messagebox/MsgBox.html#show"},
{"dguihub.messagebox.MsgBox.show" : "dguihub/messagebox/MsgBox.html#show"},
{"dguihub.messagebox.MsgBox.show" : "dguihub/messagebox/MsgBox.html#show"},
{"dguihub.messagebox.MsgBox.show" : "dguihub/messagebox/MsgBox.html#show"},
{"dguihub.combobox" : "dguihub/combobox.html"},
{"dguihub.tabcontrol" : "dguihub/tabcontrol.html"},
{"dguihub.picturebox" : "dguihub/picturebox.html"},
{"dguihub.listbox" : "dguihub/listbox.html"},
{"dguihub.treeview" : "dguihub/treeview.html"},
{"dguihub.menubar" : "dguihub/menubar.html"},
{"dguihub.statusbar" : "dguihub/statusbar.html"},
{"dguihub.filebrowserdialog" : "dguihub/filebrowserdialog.html"},
{"dguihub.timer" : "dguihub/timer.html"},
{"dguihub.application" : "dguihub/application.html"},
{"dguihub.application.Application" : "dguihub/application/Application.html"},
{"dguihub.application.Application.instance" : "dguihub/application/Application.html#instance"},
{"dguihub.application.Application.executablePath" : "dguihub/application/Application.html#executablePath"},
{"dguihub.application.Application.tempPath" : "dguihub/application/Application.html#tempPath"},
{"dguihub.application.Application.startupPath" : "dguihub/application/Application.html#startupPath"},
{"dguihub.application.Application.resources" : "dguihub/application/Application.html#resources"},
{"dguihub.application.Application.enableManifest" : "dguihub/application/Application.html#enableManifest"},
{"dguihub.application.Application.initCommonControls" : "dguihub/application/Application.html#initCommonControls"},
{"dguihub.application.Application.doRun" : "dguihub/application/Application.html#doRun"},
{"dguihub.application.Application.run" : "dguihub/application/Application.html#run"},
{"dguihub.application.Application.exit" : "dguihub/application/Application.html#exit"},
{"dguihub.application.Application.showExceptionForm" : "dguihub/application/Application.html#showExceptionForm"},
{"dguihub.application.Application.onMainFormClose" : "dguihub/application/Application.html#onMainFormClose"},
{"dguihub.textbox" : "dguihub/textbox.html"},
{"dguihub.label" : "dguihub/label.html"},
{"dguihub.contextmenu" : "dguihub/contextmenu.html"},
{"dguihub.layout.splitpanel" : "dguihub/layout/splitpanel.html"},
{"dguihub.layout.layoutcontrol" : "dguihub/layout/layoutcontrol.html"},
{"dguihub.layout.gridpanel" : "dguihub/layout/gridpanel.html"},
{"dguihub.layout.panel" : "dguihub/layout/panel.html"},
{"dguihub.toolbar" : "dguihub/toolbar.html"},
{"dguihub.tooltip" : "dguihub/tooltip.html"},
{"dguihub.form" : "dguihub/form.html"},
{"dguihub.trackbar" : "dguihub/trackbar.html"},
{"dguihub.folderbrowserdialog" : "dguihub/folderbrowserdialog.html"},
{"dguihub.scrollbar" : "dguihub/scrollbar.html"},
{"dguihub.imagelist" : "dguihub/imagelist.html"},
{"dguihub.resources" : "dguihub/resources.html"},
{"dguihub" : "dguihub.html"},
{"dguihub.listview" : "dguihub/listview.html"},
{"dguihub.fontdialog" : "dguihub/fontdialog.html"},
{"dguihub.semver" : "dguihub/semver.html"},
{"dguihub.semver.VERSION" : "dguihub/semver.html#VERSION"},
{"dguihub.semver.TAG_VERSION" : "dguihub/semver.html#TAG_VERSION"},
];
function search(str) {
	var re = new RegExp(str.toLowerCase());
	var ret = {};
	for (var i = 0; i < items.length; i++) {
		var k = Object.keys(items[i])[0];
		if (re.test(k.toLowerCase()))
			ret[k] = items[i][k];
	}
	return ret;
}

function searchSubmit(value, event) {
	console.log("searchSubmit");
	var resultTable = document.getElementById("results");
	while (resultTable.firstChild)
		resultTable.removeChild(resultTable.firstChild);
	if (value === "" || event.keyCode == 27) {
		resultTable.style.display = "none";
		return;
	}
	resultTable.style.display = "block";
	var results = search(value);
	var keys = Object.keys(results);
	if (keys.length === 0) {
		var row = resultTable.insertRow();
		var td = document.createElement("td");
		var node = document.createTextNode("No results");
		td.appendChild(node);
		row.appendChild(td);
		return;
	}
	for (var i = 0; i < keys.length; i++) {
		var k = keys[i];
		var v = results[keys[i]];
		var link = document.createElement("a");
		link.href = v;
		link.textContent = k;
		link.attributes.id = "link" + i;
		var row = resultTable.insertRow();
		row.appendChild(link);
	}
}

function hideSearchResults(event) {
	if (event.keyCode != 27)
		return;
	var resultTable = document.getElementById("results");
	while (resultTable.firstChild)
		resultTable.removeChild(resultTable.firstChild);
	resultTable.style.display = "none";
}

