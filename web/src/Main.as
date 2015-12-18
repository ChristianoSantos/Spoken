package {
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.text.TextField;
	
	public class Main extends Sprite {
		public var background			:Loader;
		
		public var txtProgress			:TextField;
		
		public var dashboardScene		:DashboardScene;
		public var settingScene			:SettingScene;
		public var creditScene			:CreditScene;
		public var wordScene 			:WordScene;
		public var wordActivityScene 	:WordActivityScene;
		public var textScene            :TextScene;
		public var phraseScene     		:PhraseScene;
		public var glossaryScene    	:GlossaryScene;
		
		public function Main():void {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			// entry point
			
			Database.load();
			
			background = new Loader();
            background.load(new URLRequest("gfx/background.png"));
			addChild( background );

			txtProgress = new TextField();
			txtProgress.text = "Carregando... 0%";
			txtProgress.x = 50;
			txtProgress.y = 50;
			addChild( txtProgress );
			
			loaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgress, false, 0, true);
			loaderInfo.addEventListener(Event.COMPLETE, onComplete, false, 0, true);
			
			dashboardScene = new DashboardScene();
			dashboardScene.visible = false;
			addChild( dashboardScene );
			
			settingScene = new SettingScene();
			settingScene.visible = false;
			addChild( settingScene );
			
			creditScene = new CreditScene();
			creditScene.visible = false;
			addChild( creditScene );
			
			wordScene = new WordScene();
			wordScene.visible = false;
			addChild(wordScene);
			
			wordActivityScene = new WordActivityScene();
			wordActivityScene.visible = false;
			addChild(wordActivityScene);
			
			textScene = new TextScene();
			textScene.visible = false;
			addChild( textScene );
			
			phraseScene = new PhraseScene();
			phraseScene.visible = false;
			addChild( phraseScene );
			
			glossaryScene = new GlossaryScene();
			glossaryScene.visible = false;
			addChild( glossaryScene );
		}
		
		public function onProgress(evt:ProgressEvent):void {
			txtProgress.text = "Carregando..." + int(100 * (evt.bytesLoaded / evt.bytesTotal)) + "%";
		}
		
		public function onComplete(evt:Event):void {
			txtProgress.visible = false;
			dashboardScene.visible = true;
		}
		
	}
	
}