package {
	import flash.desktop.NativeApplication;
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
		
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class Main extends MainBase {
		
		public function Main():void {
			//xx stage.scaleMode = StageScaleMode.NO_SCALE;
			//xx stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.DEACTIVATE, deactivate);
			
			// touch or gesture?
			//xx Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			
			// entry point
			super();
			
			// new to AIR? please read *carefully* the readme.txt files!
		}
		
		private function deactivate(e:Event):void {
			// make sure the app behaves well (or exits) when in background
			//NativeApplication.nativeApplication.exit();
		}
		
	}
	
}