package  
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.TextEvent;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS (Victor)
	 */
	public class SceneSpeaking extends MovieClip 
	{
		public var btnBack : SimpleButton;
		public var txtTitulo : TextField;
		
		public function SceneSpeaking() 
		{
			var upState : Loader = new Loader;
			upState.load(new URLRequest("gfx/btnBack.png"));
			btnBack = new SimpleButton(upState, upState, upState, upState);
			btnBack.x = 0;
			btnBack.y = 0;
			btnBack.addEventListener(MouseEvent.CLICK, goBack);
			addChild(btnBack);
			
			txtTitulo = new TextField;
			txtTitulo.text = "Fala";
			txtTitulo.x = 130;
			txtTitulo.y = 0;
			txtTitulo.setTextFormat(new TextFormat("Arial", 25, 0xFFFFFF, true));
			addChild(txtTitulo);
			super();
			
		}
		
		public function goBack(evt:MouseEvent):void {
			this.visible = false;
			Main(parent).sceneActivity.visible = true;
		}
		
	}

}