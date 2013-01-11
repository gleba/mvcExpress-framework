package com.mindScriptAct.mvcExpressLiveVisualizer.engine {
import com.mindScriptAct.mvcExpressLiveVisualizer.model.TestColorVO;
import flash.display.Shape;
import org.mvcexpress.live.Task;

/**
 * COMMENT
 * @author rBanevicius
 */
public class RedTask extends Task {
	
	[Inject(name="testview_RED")]
	public var testRectangle:Shape;
	
	[Inject(name="testdata")]
	public var testData:TestColorVO;
	
	override public function run():void {
		testRectangle.rotation += 10;
	}

}
}