package com.mindScriptAct.modularSample.modules.console.model {
import com.mindScriptAct.modularSample.modules.console.msg.ConsoleDataMsg;
import org.mvcexpress.mvc.Proxy;

/**
 * COMMENT
 * @author Raimundas Banevicius (http://www.mindscriptact.com/)
 */
public class ConsoleLogProxy extends Proxy {
	
	private var messageList:Vector.<String> = new Vector.<String>();
	
	public function ConsoleLogProxy() {
	
	}
	
	public function pushMessage(messageText:String):void {
		messageList.push(messageText);
		sendMessage(ConsoleDataMsg.MESSAGE_ADDED, messageText);
	}
	
	override protected function onRegister():void {
		trace("ConsoleLogProxy.onRegister");
	}
	
	override protected function onRemove():void {
		trace("ConsoleLogProxy.onRemove");
	}

}
}