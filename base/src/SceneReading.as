package  
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS (Lucas)
	 */
	public class SceneReading extends MovieClip {
		public var background		:Loader;
		public var btnBack			:SimpleButton;
		public var txtTitle			:TextField;
		
		public function SceneReading() {
			background = new Loader();
			background.load(new URLRequest(""));
			addChild( background );
			
			var upState : Loader = new Loader();
            upState.load(new URLRequest("gfx/btnback.png"));
			btnBack = new SimpleButton( upState, upState, upState, upState );
			btnBack.x = 0;
			btnBack.y = 0;
			btnBack.addEventListener(MouseEvent.CLICK, gotoDashboard);
			addChild( btnBack );
			
			txtTitle = new TextField();
			txtTitle.text = "Reading";
			txtTitle.x = 37;
			txtTitle.y = 4;
			addChild( txtTitle );
			
			txtTitle.setTextFormat( new TextFormat("Century Gothic", 20, 0x00ff00, false));
			
			super();
			
		}
		public function gotoDashboard(evt:MouseEvent):void {
				this.visible = false;
				Main(parent).sceneDashboard.visible = true;
		}
	}
}