package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Loader;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class SceneDashboard extends MovieClip {
		public var bgMenuButtons	:Loader;
		public var title			:Loader;
		
		public var btnGlossary		:SimpleButton;
		public var btnWords			:SimpleButton;
		public var btnPhrases		:SimpleButton;
		public var btnTexts			:SimpleButton;
		public var btnSetting		:SimpleButton;
		public var btnCredit		:SimpleButton;
		
		public function SceneDashboard() {
			
			bgMenuButtons = new Loader();
            bgMenuButtons.load(new URLRequest("gfx/bgMenuButtons.png"));
			bgMenuButtons.x = 43;
			bgMenuButtons.y = 320;
			this.addChild( bgMenuButtons );

			title = new Loader();
            title.load(new URLRequest("gfx/title.png"));
			title.x = 0;
			title.y = 50;
			this.addChild( title );
			
			var upState : Loader = new Loader();
            upState.load(new URLRequest("gfx/btnGlossary.png"));
			var downState : Loader = new Loader();
            downState.load(new URLRequest("gfx/btnGlossary.png"));
			downState.x += 8;
			downState.y += 3;
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnGlossary = new SimpleButton( upState, upState, downState, upState );
			btnGlossary.x = 82;
			btnGlossary.y = 322;
			btnGlossary.addEventListener(MouseEvent.CLICK, gotoGlossary, false, 0, true);
			this.addChild( btnGlossary );
			
			upState = new Loader();
            upState.load(new URLRequest("gfx/btnWords.png"));
			downState = new Loader();
            downState.load(new URLRequest("gfx/btnWords.png"));
			downState.x += 5;
			downState.y += 5;
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnWords = new SimpleButton( upState, upState, downState, upState );
			btnWords.x = 45;
			btnWords.y = 345;
			btnWords.addEventListener(MouseEvent.CLICK, gotoWord, false, 0, true);
			this.addChild( btnWords );
			

			
			upState = new Loader();
            upState.load(new URLRequest("gfx/btnPhrases.png"));
			downState = new Loader();
            downState.load(new URLRequest("gfx/btnPhrases.png"));
			downState.x += 5;
			downState.y += 5;
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnPhrases = new SimpleButton( upState, upState, downState, upState );
			btnPhrases.x = 188;
			btnPhrases.y = 345;
			btnPhrases.addEventListener(MouseEvent.CLICK, gotoPhrase, false, 0, true);
			this.addChild( btnPhrases );
			
			upState = new Loader();
            upState.load(new URLRequest("gfx/btnTexts.png"));
			downState = new Loader();
            downState.load(new URLRequest("gfx/btnTexts.png"));
			downState.x += 8;
			downState.y += 3;
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnTexts = new SimpleButton( upState, upState, downState, upState );
			btnTexts.x = 82;
			btnTexts.y = 415;
			btnTexts.addEventListener(MouseEvent.CLICK, gotoText, false, 0, true);
			this.addChild( btnTexts );
			
			upState = new Loader();
            upState.load(new URLRequest("gfx/btnSettings.png"));
			downState = new Loader();
            downState.load(new URLRequest("gfx/btnSettings.png"));
			downState.x += 5;
			downState.y += 3;
			downState.scaleX = 0.9;
			downState.scaleY = 0.9;
			btnSetting = new SimpleButton( upState, upState, downState, upState );
			btnSetting.x = 122;
			btnSetting.y = 372;
			btnSetting.addEventListener(MouseEvent.CLICK, gotoActivity); //FIX gotoSetting
			addChild( btnSetting );
			
			upState = new Loader();
            upState.load(new URLRequest("gfx/btnCredit.jpg"));
			downState = new Loader();
            downState.load(new URLRequest("gfx/btnCredit.jpg"));
			downState.x += 5;
			downState.y += 3;
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