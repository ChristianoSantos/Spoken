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
	
	public class SceneWord extends SceneBase {
		public var txtDescription:	TextField;
		public var txtWordsTrained:	TextField;
		public var txtPerformance:	TextField;
		public var txtChooseAmount:	TextField;
		public var btnOptions:		Array;
		
		public function SceneWord() {
			super();
			txtTitle.text = "Words";
			
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