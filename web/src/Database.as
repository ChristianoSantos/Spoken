package  {
	/**
	 * ...
	 * @author Grupo Spoken - IFS
	 */
	public class Database {

		public static var base:Array;
		
		public static function load():void {
			base = new Array();
			
			var cores:Array = new Array();
			cores["azul"] = { en:"blue", pt:"azul" };
			cores["verde"] = { en:"green", pt:"verde" };
			cores["branco"] = { en:"white", pt:"branco" };
			cores["preto"] = { en:"black", pt:"preto" };
			var paises:Array = new Array();
			paises["brasil"] = { en:"Brazil", pt:"Brasil" };
			paises["dinamarca"] = { en:"Denmark", pt:"Dinamarca" };
			paises["estadosUnidos"] = { en:"United States", pt:"Estados Unidos" };
			
			base["Geral"] = new Array();
			base["Geral"].colecoes = new Array();
			base["Geral"].colecoes["Cores"] = cores;
			base["Geral"].colecoes["Países"] = paises;
			
			var engSoftware:Array = new Array();
			engSoftware["prototipacao"] = { en:"Prototyping", pt:"Prototipação" };
			engSoftware["validacao"] = { en:"Validation", pt:"Validação" };
			
			base["Informática"] = new Array();
			base["Informática"].colecoes = new Array();
			base["Informática"].colecoes["Eng. de Software"] = engSoftware;
			
		}
		
	}

}