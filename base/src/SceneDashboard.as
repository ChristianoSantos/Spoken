package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class SceneDashboard extends SceneBase {
		public var bgMenuButtons	:LoaderExt;
		public var title			:LoaderExt;
		
		public var btnGlossary		:SimpleButton;
		public var btnWords			:SimpleButton;
		public var btnPhrases		:SimpleButton;
		public var btnTexts			:SimpleButton;
		public var btnSetting		:SimpleButton;
		public var btnCredit		:SimpleButton;
		
		public function SceneDashboard() {
			super();
			
			bgMenuButtons = new LoaderExt( "gfx/bgMenuButtons.png", 43, 320 );
			this.addChild( bgMenuButtons );

			title = new LoaderExt( "gfx/title.png", 0, 50 );
			this.addChild( title );
			
			var upState : LoaderExt = new LoaderExt( "gfx/btnGlossary.png" );
			var downState : LoaderExt = new LoaderExt( "gfx/btnGlossary.png", 8, 3 );
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnGlossary = new SimpleButton( upState, upState, downState, upState );
			btnGlossary.x = 82;
			btnGlossary.y = 322;
			btnGlossary.addEventListener(MouseEvent.CLICK, gotoGlossary, false, 0, true);
			this.addChild( btnGlossary );
			
			upState = new LoaderExt( "gfx/btnWords.png" );
			downState = new LoaderExt( "gfx/btnWords.png", 5, 5 );
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnWords = new SimpleButton( upState, upState, downState, upState );
			btnWords.x = 45;
			btnWords.y = 345;
			btnWords.addEventListener(MouseEvent.CLICK, gotoWord, false, 0, true);
			this.addChild( btnWords );
			
			upState = new LoaderExt( "gfx/btnPhrases.png" );
			downState = new LoaderExt( "gfx/btnPhrases.png", 5, 5 );
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnPhrases = new SimpleButton( upState, upState, downState, upState );
			btnPhrases.x = 188;
			btnPhrases.y = 345;
			btnPhrases.addEventListener(MouseEvent.CLICK, gotoPhrase, false, 0, true);
			this.addChild( btnPhrases );
			
			upState = new LoaderExt( "gfx/btnTexts.png" );
			downState = new LoaderExt("gfx/btnTexts.png", 8, 3);
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnTexts = new SimpleButton( upState, upState, downState, upState );
			btnTexts.x = 82;
			btnTexts.y = 415;
			btnTexts.addEventListener(MouseEvent.CLICK, gotoText, false, 0, true);
			this.addChild( btnTexts );
			
			upState = new LoaderExt( "gfx/btnSettings.png" );
			downState = new LoaderExt( "gfx/btnSettings.png", 5, 3 );
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnSetting = new SimpleButton( upState, upState, downState, upState );
			btnSetting.x = 122;
			btnSetting.y = 372;
			btnSetting.addEventListener(MouseEvent.CLICK, gotoActivity); //FIX gotoSetting
			addChild( btnSetting );
			
			upState = new LoaderExt( "gfx/btnCredit.jpg" );
			downState = new LoaderExt( "gfx/btnCredit.jpg", 5, 3 );
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnCredit = new SimpleButton( upState, upState, downState, upState );
			btnCredit.x = 288;
			btnCredit.y = 0;
			btnCredit.addEventListener(MouseEvent.CLICK, gotoCredit);
			addChild( btnCredit );
		}
		
		public function gotoGlossary(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneGlossary.visible = true;
		}
		
		public function gotoSetting(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneSetting.visible = true;
		}
		
		public function gotoActivity(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneActivity.visible = true;
		}
		
		public function gotoCredit(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneCredit.visible = true;
		}
		
		public function gotoWord(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneWord.visible = true;
		}
		public function gotoText(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneText.visible = true;
		}	
		public function gotoPhrase(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).scenePhrase.visible = true;
		}	
	}
}