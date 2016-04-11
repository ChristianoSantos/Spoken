package  
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS (Victor)
	 */
	public class SceneLibrary extends MovieClip 
	{
		public var txtTitulo 	: TextField
		public var btnBack 		: SimpleButton
		
		public function SceneLibrary() 
		{
			var upState : Loader = new Loader;
				upState.load(new URLRequest("gfx/btnBack.png"));
				btnBack = new SimpleButton(upState, upState, upState, upState);
				btnBack.x = 0;
				btnBack.y = 0;
				btnBack.addEventListener(MouseEvent.CLICK, goBack);
				addChild(btnBack);
				
				txtTitulo = new TextField;
				txtTitulo.text = "Biblioteca";
				txtTitulo.x = 130;
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