package suites.featureProxyHost.testObjects.remoteModule {
import org.mvcexpress.mvc.Proxy;
import suites.featureProxyHost.testObjects.localObjects.HostProxy;

/**
 * TODO:CLASS COMMENT
 * @author Raimundas Banevicius (raima156@yahoo.com)
 */
public class RemoteProxyWithNormalInject extends Proxy{
	
	
	public function getHostProxy():HostProxy {
		return hostProxy;
	}
	
	[Inject]
	public var hostProxy:HostProxy;
	
	public function RemoteProxyWithNormalInject(){
		
	}
	
	override protected function onRegister():void{
	
	}
	
	override protected function onRemove():void{
	
	}

}
}