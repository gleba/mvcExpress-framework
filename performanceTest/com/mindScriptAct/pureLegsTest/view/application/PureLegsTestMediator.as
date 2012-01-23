package com.mindScriptAct.pureLegsTest.view.application {
import com.mindScriptAct.pureLegsTest.notes.Note;
import com.mindScriptAct.pureLegsTest.PureLegsTesting;
import com.mindScriptAct.pureLegsTest.view.testSprite.TestSprite;
import com.mindScriptAct.pureLegsTest.view.testSprite.TestSpriteMediator;
import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import org.pureLegs.mvc.Mediator;

/**
 * COMMENT
 * @author rbanevicius
 */
public class PureLegsTestMediator extends Mediator {
	
	[Inject]
	public var view:PureLegsTesting;
	
	private var testObjectCount:int = 0;
	private var outputTf:TextField;
	
	private var childHolder:Sprite = new Sprite();
	private var childStack:Vector.<TestSprite> = new Vector.<TestSprite>();
	
	public override function onRegister():void {
		//trace( "CoreTestMediator.onRegister" );
		
		view.addChild(childHolder);
		
		addOutput();
		
		addHandler(Note.APPEND_LINE, handleAppendLine);
		//
		addHandler(Note.CREATE_TEST_VIEW, handleCreateTestSprite);
		addHandler(Note.REMOVE_TEST_VIEW, handleRemoveTestSprite);
		//
		addHandler(Note.ACTIVATE_MEDIATOR, handleActivateMediatorTest);
	
	}
	
	private function addOutput():void {
		outputTf = new TextField();
		view.addChild(outputTf);
		
		outputTf.text = '';
		outputTf.autoSize = TextFieldAutoSize.LEFT;
		outputTf.multiline = true;
		outputTf.selectable = true;
		outputTf.border = true;
	}
	
	private function handleAppendLine(lineText:String):void {
		outputTf.appendText(lineText + "\n");
	}
	
	private function handleCreateTestSprite(objectId:int):void {
		var newObject:TestSprite = new TestSprite(objectId);
		mediatorMap.mediate(newObject);
		childStack.push(newObject);
		childHolder.addChild(newObject);
	}
	
	private function handleRemoveTestSprite(objectId:int):void {
		var oldObject:TestSprite = childStack.pop();
		if (oldObject) {
			childHolder.removeChild(oldObject);
			mediatorMap.unmediate(oldObject);
		}
	}
	
	private function handleActivateMediatorTest(objectId:int):void {
		// do stuff
	}

}
}