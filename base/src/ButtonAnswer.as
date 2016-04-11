package {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class ButtonAnswer extends MovieClip {
		public var bgUp			:LoaderExt;
		public var bgWrong		:LoaderExt;
		public var bgRight		:LoaderExt;
		
		public var txtLabel		:TextField;
		
		public function ButtonAnswer( label:String ) {
			
			bgUp = new LoaderExt( "gfx/btnAnswerUp.png" );
			addChild( bgUp );
			
			bgWrong = new LoaderExt( "gfx/btnAnswerWrong.png" );
			addChild( bgWrong );
			
			bgRight = new LoaderExt( "gfx/btnAnswerRight.png" );
			addChild( bgRight );
			
			txtLabel = new TextField();
			txtLabel.text = label;
			txtLabel.y = 35;
			addChild( txtLabel );
			
			addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
			addEventListener(MouseEvent.CLICK, mouseClick);
			
			super();
		}
		
		public function mouseDown(evt:MouseEvent): void {
			bgUp.scaleX = 0.8;
			bgUp.scaleY = 0.8;
		}
		
		public function mouseClick(evt:MouseEvent) :void {
			bgUp.visible = false;
			bgRight.visible = true;
		}
		
	}

}