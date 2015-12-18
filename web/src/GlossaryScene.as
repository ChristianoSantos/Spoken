package  
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
		public class GlossaryScene extends MovieClip{
		public var background : Loader;
		public var btnBack : SimpleButton;
		public var txtTitle : TextField;
		
		public var areas	: Array = new Array;
		
		public function GlossaryScene() {
			//background = new Loader();
			//background.load(new URLRequest("gfx/Text3.jpg"));
			//addChild(background);
			
			var upState : Loader = new Loader;
			upState.load(new URLRequest("gfx/btnBack.png"));
			btnBack = new SimpleButton( upState, upState, upState, upState );
			btnBack.x = 0;
			btnBack.y = 0;
			btnBack.addEventListener(MouseEvent.CLICK, gotoDashboard);
			addChild( btnBack );
			
			txtTitle = new TextField();
			txtTitle.text = "Glossary";
			txtTitle.x = 20;
			txtTitle.y = 20;
			txtTitle.setTextFormat( new TextFormat("Arial", 25, 0x0000FF, true) );
			addChild( txtTitle );
			
			var i:int = 0;
			var txtField:TextField;
			for (var area:String in Database.base) {
				txtField = new TextField();
				txtField.text = area;
				txtField.x = 20;
				txtField.y = 50 + i;
				txtField.setTextFormat( new TextFormat("Arial", 14, 0x0000FF, true) );
				addChild( txtField );
				i += 15;
				for (var colecao:String in Database.base[area].colecoes) {
					txtField = new TextField();
					txtField.text = colecao;
					txtField.x = 20;
					txtField.y = 50 + i;
					txtField.mouseEnabled = true;
					txtField.setTextFormat( new TextFormat("Arial", 12, 0x0000FF, false) );
					txtField.addEventListener(MouseEvent.CLICK, gotoCollection);
					areas[txtField.text] = area;
					addChild( txtField );
					i += 15;
				}
			}
			
			
			super();
			
		}
		
		public function gotoCollection(evt:MouseEvent):void {
			var t:TextField = TextField(evt.currentTarget);
			txtTitle.text = areas[t.text];
		}
		
		public function gotoDashboard(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).dashboardScene.visible = true;
		}
	}

}