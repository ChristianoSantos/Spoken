package {
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class ButtonSelect extends MovieClip {
		public var background	:LoaderExt;
		public var txtValue		:TextField;
		public var txtLabel		:TextField;
		public var value		:int;
		
		
		public function ButtonSelect(value:int, label:String) {
			
			background = new LoaderExt( "gfx/btnSelect.png" );
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