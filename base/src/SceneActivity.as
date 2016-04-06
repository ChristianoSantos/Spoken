package
{
	
	import flash.display.MovieClip;
	import flash.display.Loader;
	import flash.display.SimpleButton;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.net.URLRequest;
	import flash.events.MouseEvent;
	
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class SceneActivity extends MovieClip 
	{
		
		public var background		:Loader;
		public var btnBack			:SimpleButton;
		public var txtTitle			:TextField;
		
		public function SceneActivity() {
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
			txtTitle.text = "Activities";
			txtTitle.x = 37;
			txtTitle.y = 4;
			addChild( txtTitle );
			
			txtTitle.setTextFormat( new TextFormat("Century Gothic", 20, 0x00ff00, false));
			
			var btnActivity:ButtonAnswer = new ButtonAnswer( "Lições" );
			btnActivity.x = 15;
			btnActivity.y = 75;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoLesson, false, 0, true);
			addChild( btnActivity );

			btnActivity = new ButtonAnswer( "Leitura" );
			btnActivity.x = 165;
			btnActivity.y = 75;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoReading, false, 0, true);
			addChild( btnActivity );
			
			btnActivity = new ButtonAnswer( "Escrita" );
			btnActivity.x = 15;
			btnActivity.y = 150;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoWriting, false, 0, true);
			addChild( btnActivity );
			
			btnActivity = new ButtonAnswer( "Audição" );
			btnActivity.x = 165;
			btnActivity.y = 150;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoListening, false, 0, true);
			addChild( btnActivity );
			
			btnActivity = new ButtonAnswer( "Fala" );
			btnActivity.x = 15;
			btnActivity.y = 225;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoSpeaking, false, 0, true);
			addChild( btnActivity );
			
			btnActivity = new ButtonAnswer( "Comunidade" );
			btnActivity.x = 165;
			btnActivity.y = 225;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoCommunity, false, 0, true);
			addChild( btnActivity );
			
			btnActivity = new ButtonAnswer( "Biblioteca" );
			btnActivity.x = 15;
			btnActivity.y = 300;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoLibrary, false, 0, true);
			addChild( btnActivity );
			
			btnActivity = new ButtonAnswer( "Jogos" );
			btnActivity.x = 165;
			btnActivity.y = 300;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoGame, false, 0, true);
			addChild( btnActivity );
			
			btnActivity = new ButtonAnswer( "Exercícios" );
			btnActivity.x = 15;
			btnActivity.y = 375;
			btnActivity.addEventListener(MouseEvent.CLICK, gotoExercise, false, 0, true);
			addChild( btnActivity );
			
			super();
		}
		
		public function gotoDashboard(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneDashboard.visible = true;
		}
		
		public function gotoLesson(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneLesson.visible = true;
		}
		
		public function gotoReading(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneReading.visible = true;
		}
		
		public function gotoWriting(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneWriting.visible = true;
		}
		
		public function gotoListening(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneListening.visible = true;
		}
		
		public function gotoSpeaking(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneSpeaking.visible = true;
		}
		
		public function gotoCommunity(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneCommunity.visible = true;
		}
		
		public function gotoLibrary(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneLibrary.visible = true;
		}
		
		public function gotoGame(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneGame.visible = true;
		}

		public function gotoExercise(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneExercise.visible = true;
		}
	}

}