package  
{
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class SelectButton extends MovieClip {
		public var background	:Loader;
		public var txtValue		:TextField;
		public var txtLabel		:TextField;
		public var value		:int;
		
		
		public function SelectButton(value:int, label:String) {
			
			background = new Loader();
            background.load(new URLRequest("gfx/btnSelect.png"));
			addChild( background );
			
			this.value = value;
			
			txtValue = new TextField();
			txtValue.text = String(value);
			addChild( txtValue );
			
			txtLabel = new TextField();
			txtLabel.text = label;
			txtLabel.y = 35;
			addChild( txtLabel );
			
			super();
		}
		
	}

}