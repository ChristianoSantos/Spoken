package  
{
	import flash.display.MovieClip;
	import flash.display.Loader;
	import flash.display.SimpleButton;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.text.TextFormat;
	
	
		public class SceneCredit extends MovieClip {
		public var background		:Loader;
		public var btnBack			:SimpleButton;
		public var txtTitle			:TextField;
		
		public function SceneCredit() {
			background = new Loader();
			background.load(new URLRequest("gfx/bgbar.jpg"));
			addChild( background );
			
			var upState : Loader = new Loader();
            upState.load(new URLRequest("gfx/btnBack.png"));
			btnBack = new SimpleButton( upState, upState, upState, upState );
			btnBack.x = 0;
			btnBack.y = 0;
			btnBack.addEventListener(MouseEvent.CLICK, gotoDashboard);
			addChild( btnBack );
			
			txtTitle = new TextField();
			txtTitle.text = "Créditos";
			txtTitle.x = 37;
			txtTitle.y = 4;
			txtTitle.setTextFormat( new TextFormat ( "Arial", 25, 0x0000FF, true));
			addChild( txtTitle );
			
			txtTitle.setTextFormat(new TextFormat("Century Gothic", 20, 0x00ff00, true));
			
			
			super();
		}
	
		public function gotoDashboard(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneDashboard.visible = true;
		}
	
		
	}	
		

}