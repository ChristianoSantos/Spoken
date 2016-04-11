package {
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class SceneWordActivity extends SceneBase {
		public var amount		:int;
		public var current		:int;
		
		public var txtWord		:TextField;
		public var txtMeans		:TextField;
		
		public var btnAnswers	:Array;
		
		
		public function SceneWordActivity() {
			super( "WordActivity" );
			
			var collection:Array = Database.base["Geral"].colecoes["Cores"];
			
			var tFormat : TextFormat = new TextFormat("Century Gothic", 25, 0x00ff00, true, false, false, null, null, TextFormatAlign.CENTER);   //Text Format = Configuração de textos!
			
			txtWord = new TextField();
			txtWord.text = collection["azul"].en;
			txtWord.x = 0;
			txtWord.y = 50;
			txtWord.width = 320;
			txtWord.selectable = false;
			addChild( txtWord );
			
			txtWord.setTextFormat(tFormat);
			
			txtMeans = new TextField();
			txtMeans.text = "Quer dizer...";
			txtMeans.x = 10;
			txtMeans.y = 80;
			txtMeans.width = 300;
			txtMeans.height = 40;
			txtMeans.textColor = 0xFFFFFF;
			addChild( txtMeans );
			
			btnAnswers = new Array();
			var btnAnswer:ButtonAnswer;
											
			
			for (var i:int = 0; i < 4; i++) {
				btnAnswer = new ButtonAnswer( collection["azul"].pt );
				btnAnswer.x = 30 + (i % 2)*100;
				btnAnswer.y = 200 + int(i / 2) * 100;
				//btnSelect.addEventListener(MouseEvent.CLICK, gotoWordActivity, false, 0, true);
				btnAnswers.push( btnAnswer );
				addChild( btnAnswer );
			}
		}
		
		public function show( amount: int ) : void {
			current = 0;
			this.amount = amount;
			visible = true;
		}
	}

}