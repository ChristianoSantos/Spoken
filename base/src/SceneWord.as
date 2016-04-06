package  
{
	import adobe.utils.CustomActions;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
		public class SceneWord extends MovieClip{
		public var background: 		Loader;
		public var btnBack: 		SimpleButton;
		public var txtTitle: 		TextField;
		public var txtDescription:	TextField;
		public var txtWordsTrained:	TextField;
		public var txtPerformance:	TextField;
		public var txtChooseAmount:	TextField;
		public var btnOptions:		Array;
		/*public var btnPlus: 		SimpleButton;
		public var btnMinus: 		SimpleButton;*/
		
		public function SceneWord() {
			background = new Loader();
			background.load(new URLRequest("gfx/background.png"));
			addChild(background);
			
			background = new Loader();
			background.load(new URLRequest("gfx/bgbar.jpg"));
			addChild( background );
			
			var upState : Loader = new Loader;
			upState.load(new URLRequest("gfx/btnBack.png"));
			btnBack = new SimpleButton( upState, upState, upState, upState );
			btnBack.x = 0;
			btnBack.y = 0;
			btnBack.addEventListener(MouseEvent.CLICK, gotoDashboard);
			addChild( btnBack );
			
			/*upState = new Loader;
			upState.load(new URLRequest("gfx/btnPlus.png"));
			btnPlus = new SimpleButton( upState, upState, upState, upState );
			btnPlus.x = 288;
			btnPlus.y = 0;
			btnPlus.addEventListener(MouseEvent.CLICK, plusSize);
			addChild(btnPlus);
			
			upState = new Loader;
			upState.load(new URLRequest("gfx/btnMinus.png"));
			btnMinus = new SimpleButton(upState, upState, upState, upState);
			btnMinus.x = 240;
			btnMinus.y = 0
			btnMinus.addEventListener(MouseEvent.CLICK, minusSize);
			addChild(btnMinus);*/
			
			txtTitle = new TextField();
			txtTitle.text = "Words";
			txtTitle.x = 0;
			txtTitle.y = 0;
			txtTitle.width = 320;
			txtTitle.selectable = false;
			addChild( txtTitle );
			
			var tFormat : TextFormat = new TextFormat("Century Gothic", 25, 0x00ff00, true, false, false, null, null, TextFormatAlign.CENTER);   //Text Format = Configuração de textos!
			txtTitle.setTextFormat(tFormat);
			
			txtDescription = new TextField();
			txtDescription.text = "Treine tradução de palavras e/ou expressões gerais e das áreas escolhidas.";
			txtDescription.x = 10;
			txtDescription.y = 25;
			txtDescription.width = 300;
			txtDescription.height = 40;
			addChild( txtDescription );
			
			txtWordsTrained = new TextField();
			txtWordsTrained.text = "Palavras treinadas: 50 de 1.500";
			txtWordsTrained.x = 10;
			txtWordsTrained.y = 80;
			txtWordsTrained.width = 300;
			txtWordsTrained.height = 20;
			addChild( txtWordsTrained );
			
			txtPerformance = new TextField();
			txtPerformance.text = "Rendimento: 80 a 90%";
			txtPerformance.x = 10;
			txtPerformance.y = 115;
			txtPerformance.width = 300;
			txtPerformance.height = 20;
			addChild( txtPerformance );
			
			txtChooseAmount = new TextField();
			txtChooseAmount.text = "Quantidade de palavras para esta sessão:";
			txtChooseAmount.x = 10;
			txtChooseAmount.y = 150;
			txtChooseAmount.width = 300;
			txtChooseAmount.height = 20;
			addChild( txtChooseAmount );
			
			btnOptions = new Array();
			var btnSelect:ButtonSelect;
			var options:Array = new Array(	{ value:10, label:"Fácil" },
											{ value:25, label:"Médio" },
											{ value:50, label:"Difícil" },
											{value:100, label:"Épico" }	);
											
			for (var i:int = 0; i < 4; i++) {
				btnSelect = new ButtonSelect(options[i].value, options[i].label);
				btnSelect.x = 30 + (i % 2)*100;
				btnSelect.y = 200 + int(i / 2) * 100;
				btnSelect.addEventListener(MouseEvent.CLICK, gotoWordActivity, false, 0, true);
				btnOptions.push( btnSelect );
				addChild( btnSelect );
			}
			
			super();
		}
		
		public function gotoDashboard(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneDashboard.visible = true;
		}
		
		public function gotoWordActivity(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneWordActivity.show( ButtonSelect(evt.currentTarget).value );
		}

		/*public function plusSize(evt:MouseEvent):void {
			var tFormat:TextFormat;
			tFormat = new TextFormat("Arial", 50, 0x0000FF, false) ;
			txtTitle.setTextFormat(tFormat);
		}
		
		public function minusSize(evt:MouseEvent):void {
			var tFormat : TextFormat = new TextFormat("Arial", 25, 0x0000FF, false)   
			txtTitle.setTextFormat(tFormat);
		}*/
	}

}