package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class SceneGlossary extends SceneBase {
		
		public var areas	: Array = new Array;
		
		public function SceneGlossary() {
			super( "Glossário" );
			
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
			
		}
		
		public function gotoCollection(evt:MouseEvent):void {
			var t:TextField = TextField(evt.currentTarget);
			txtTitle.text = areas[t.text];
		}
		
	}

}