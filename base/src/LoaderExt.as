package  {
	import flash.display.Loader;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class LoaderExt extends Loader {
		
		public function LoaderExt(url:String, x:int=0, y:int=0) {
			super();
			this.x = x;
			this.y = y;
			this.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
			this.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onSecurityError); 
			this.load(new URLRequest( url ));
		}
		
		public function onIOError(e:IOErrorEvent):void {
			trace(e.text);
		}
		
		public function onSecurityError(e:SecurityErrorEvent):void {
			trace(e.text);
		}
	}

}