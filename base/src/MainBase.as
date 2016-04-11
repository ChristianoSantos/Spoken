package {
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.ProgressEvent;
	import flash.text.TextField;
	
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class MainBase extends Sprite {
		public var txtProgress			:TextField;
		
		public var sceneDashboard		:SceneDashboard;
		public var sceneSetting			:SceneSetting;
		public var sceneCredit			:SceneCredit;
		public var sceneWord 			:SceneWord;
		public var sceneWordActivity 	:SceneWordActivity;
		public var sceneText            :SceneText;
		public var scenePhrase     		:ScenePhrase;
		public var sceneGlossary    	:SceneGlossary;
		public var sceneActivity    	:SceneActivity;
		public var sceneLesson	    	:SceneLesson;
		public var sceneReading	    	:SceneReading;
		public var sceneWriting	    	:SceneWriting;
		public var sceneListening    	:SceneListening;
		public var sceneSpeaking    	:SceneSpeaking;
		public var sceneCommunity    	:SceneCommunity;
		public var sceneLibrary	    	:SceneLibrary;
		public var sceneGame	    	:SceneGame;
		public var sceneExercise    	:SceneExercise;

		
		
		public function MainBase():void {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			Database.load();
			
			txtProgress = new TextField();
			txtProgress.text = "Carregando... 0%";
			txtProgress.x = 50;
			txtProgress.y = 50;
			addChild( txtProgress );
			
			loaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgress, false, 0, true);
			loaderInfo.addEventListener(Event.COMPLETE, onComplete, false, 0, true);
			
			sceneDashboard = new SceneDashboard();
			sceneDashboard.visible = false;
			addChild( sceneDashboard );
			
			sceneSetting = new SceneSetting();
			sceneSetting.visible = false;
			addChild( sceneSetting );
			
			sceneCredit = new SceneCredit();
			sceneCredit.visible = false;
			addChild( sceneCredit );
			
			sceneWord = new SceneWord();
			sceneWord.visible = false;
			addChild(sceneWord);
			
			sceneWordActivity = new SceneWordActivity();
			sceneWordActivity.visible = false;
			addChild(sceneWordActivity);
			
			sceneText = new SceneText();
			sceneText.visible = false;
			addChild( sceneText );
			
			scenePhrase = new ScenePhrase();
			scenePhrase.visible = false;
			addChild( scenePhrase );
			
			sceneGlossary = new SceneGlossary();
			sceneGlossary.visible = false;
			addChild( sceneGlossary );

			sceneActivity = new SceneActivity();
			sceneActivity.visible = false;
			addChild( sceneActivity );
			
			sceneLesson = new SceneLesson();
			sceneLesson.visible = false;
			addChild( sceneLesson );
			
			sceneReading = new SceneReading();
			sceneReading.visible = false;
			addChild( sceneReading );
			
			sceneWriting = new SceneWriting();
			sceneWriting.visible = false;
			addChild( sceneWriting );
			
			sceneListening = new SceneListening();
			sceneListening.visible = false;
			addChild( sceneListening );
			
			sceneSpeaking = new SceneSpeaking();
			sceneSpeaking.visible = false;
			addChild( sceneSpeaking );
			
			sceneCommunity = new SceneCommunity();
			sceneCommunity.visible = false;
			addChild( sceneCommunity );
			
			sceneLibrary = new SceneLibrary();
			sceneLibrary.visible = false;
			addChild( sceneLibrary );
			
			sceneGame = new SceneGame();
			sceneGame.visible = false;
			addChild( sceneGame );
			
			sceneExercise = new SceneExercise();
			sceneExercise.visible = false;
			addChild( sceneExercise );
			
		}
		
		public function onProgress(evt:ProgressEvent):void {
			txtProgress.text = "Carregando..." + int(100 * (evt.bytesLoaded / evt.bytesTotal)) + "%";
		}
		
		public function onComplete(evt:Event):void {
			txtProgress.visible = false;
			sceneDashboard.visible = true;
		}

	}
}