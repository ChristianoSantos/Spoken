package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class SceneBase extends MovieClip {
		public var bgBar			:LoaderExt;
		public var btnBack			:SimpleButton;
		public var txtTitle			:TextField;
		
		public function SceneBase(title:String = null) {
			if (title != null) {
				bgBar = new LoaderExt( "gfx/bgBar.png" );
				addChild( bgBar );
				
				var upState : LoaderExt = new LoaderExt( "gfx/btnBack.png" );
				btnBack = new SimpleButton( upState, upState, upState, upState );
				btnBack.x = 0;
				btnBack.y = 0;
				btnBack.addEventListener(MouseEvent.CLICK, gotoDashboard);
				addChild( btnBack );
				
				txtTitle = new TextField();
				txtTitle.text = title;
				txtTitle.x = 38;
				txtTitle.y = 4;
				addChild( txtTitle );
				
				txtTitle.setTextFormat( new TextFormat("Century Gothic", 20, 0x00ff00, false));
			}
			super();
		}
		
		public function gotoDashboard(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneDashboard.visible = true;
		}
		
	}

}