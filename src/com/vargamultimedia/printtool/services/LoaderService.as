package com.vargamultimedia.printtool.services {
import flash.filesystem.File;
import flash.net.FileReference;

import org.robotlegs.mvcs.Actor;

/**
 * @author hissterkiller
 */
public class LoaderService extends Actor {

    private var componentsFolder:String = "components/";
    private var sidePanelPath:String = componentsFolder + "SidePanel.swf";
    private var startScreenPanelPath:String = componentsFolder + "StartScreen.swf";
    private var anzeigeEditorPath:String = componentsFolder + "AnzeigeEditor.swf";
    private var flyerEditorPath:String = componentsFolder + "FlyerEditor.swf";
    private var mappeEditorPath:String = componentsFolder + "MappeEditor.swf";
    private var schildEditorPath:String = componentsFolder + "SchildEditor.swf";

    public function loadFile(url:String):void {
        var file:File = File.applicationDirectory
    }

}
}
