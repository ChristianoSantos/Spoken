package  
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class TextScene extends MovieClip {
		public var background : Loader;
		public var btnBack : SimpleButton;
		public var textTitle : TextField;
		
		
		public function TextScene() {
			background = new Loader ();
			background.load(new URLRequest("gfx/text4.jpeg"));
			addChild(background);
			
			var upState : Loader = new Loader;
			upState.load(new URLRequest("gfx/btnBack.png"));
			btnBack = new SimpleButton( upState, upState, upState, upState );
			btnBack.x = 0;
			btnBack.y = 0;
			btnBack.addEventListener(MouseEvent.CLICK, gotoDashboard);
			addChild( btnBack );
			
			textTitle = new TextField();
			textTitle.text = "Text";
			textTitle.x = 37 ;
			textTitle.y =  4 ;
			textTitle.setTextFormat( new TextFormat ( "Arial", 25, 0x0000FF, true));
			addChild( textTitle );
			
			
			super()
		}
		
		public function gotoDashboard(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).dashboardScene.visible = true;
		
	}

 }
} 