package model.constants;

import haxe.macro.Context;

class App {

	public static inline var URL : String  = "https://";

	public static var BUILD : String = getBuildDate();
	public static var PROJECT_NAME : String = '[SkeletorSheet]';

	macro public static function getBuildDate() {
		var date = Date.now().toString();
		return Context.makeExpr(date, Context.currentPos());
	}

}