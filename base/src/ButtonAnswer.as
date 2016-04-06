package  
{
	import flash.display.MovieClip;
	import flash.display.Loader;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class ButtonAnswer extends MovieClip {
		public var bgUp			:Loader;
		public var bgWrong		:Loader;
		public var bgRight		:Loader;
		
		public var txtLabel		:TextField;
		
		public function ButtonAnswer( label:String ) {
			
			bgUp = new Loader();
            bgUp.load(new URLRequest("gfx/btnAnswerUp.png"));
			addChild( bgUp );
			
			bgWrong = new Loader();
            bgWrong.load(new URLRequest("gfx/btnAnswerWrong.png"));
			bgWrong.visible = false;
			addChild( bgWrong );
			
			bgRight = new Loader();
            bgRight.load(new URLRequest("gfx/btnAnswerRight.png"));
			bgRight.visible = false;
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