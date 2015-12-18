package  
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class WordActivityScene extends MovieClip {
		public var amount		:int;
		public var current		:int;
		
		public var txtTitle		:TextField;
		public var txtWord		:TextField;
		public var txtMeans		:TextField;
		
		public var btnAnswers	:Array;
		
		
		public function WordActivityScene() {
			
			var collection:Array = Database.base["Geral"].colecoes["Cores"];
			
			txtTitle = new TextField();
			txtTitle.text = "Words";
			txtTitle.x = 0;
			txtTitle.y = 0;
			txtTitle.width = 320;
			txtTitle.selectable = false;
			addChild( txtTitle );
			
			var tFormat : TextFormat = new TextFormat("Century Gothic", 25, 0x00ff00, true, false, false, null, null, TextFormatAlign.CENTER);   //Text Format = Configuração de textos!
			txtTitle.setTextFormat(tFormat);
			
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
			var btnAnswer:AnswerButton;
											
			
			for (var i:int = 0; i < 4; i++) {
				btnAnswer = new AnswerButton( collection["azul"].pt );
				btnAnswer.x = 30 + (i % 2)*100;
				btnAnswer.y = 200 + int(i / 2) * 100;
				//btnSelect.addEventListener(MouseEvent.CLICK, gotoWordActivity, false, 0, true);
				btnAnswers.push( btnAnswer );
				addChild( btnAnswer );
			}
			
			super();
		}
		
		public function show( amount: int ) : void {
			current = 0;
			this.amount = amount;
			
			
			
			
			
			
			visible = true;
		}
	}

}