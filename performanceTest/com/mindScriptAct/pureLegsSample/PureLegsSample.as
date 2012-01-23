package com.mindScriptAct.pureLegsSample {
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.utils.getTimer;
import flash.utils.setTimeout;

/**
 * ...
 * @author Deril (raima156@yahoo.com)
 */
public class PureLegsSample extends Sprite {
	
	private var appModule:SampleAppModule;
	
	public function PureLegsSample():void {
		if (stage)
			init();
		else
			addEventListener(Event.ADDED_TO_STAGE, init);
	}
	
	private function init(event:Event = null):void {
		removeEventListener(Event.ADDED_TO_STAGE, init);
		//
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;
		//
		
		// vm warm up:
		//setTimeout(start, 2000);
		start();
	}
	
	private function start():void {
		appModule = new SampleAppModule(this);
	}

}

}