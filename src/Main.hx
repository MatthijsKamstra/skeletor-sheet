package;

import js.Browser;
import js.Browser.*;
import js.html.*;

import model.constants.App;

import vue.Vue;
import js.Tabletop;

/**
 * @author Matthijs Kamstra aka [mck]
 * MIT
 *
 */
class Main {

	var publicSpreadsheetUrl = 'https://docs.google.com/spreadsheets/d/1KhcMZv01CfiAvCPhL8nVTXEJ2oRcLgSlj5UNX40jTsM/edit?usp=sharing';
	var vm:Vue;

	public function new () {
		document.addEventListener("DOMContentLoaded", function(event) {
			console.log('Dom ready :: build: ${App.BUILD} ');
			initHomepage();
			initTabletop();
		});
	}

	function initHomepage (){
		trace('initHomepage');
		vm = new Vue({
			el: '#app',
			data: {
				showloading: true,
				sheet: [],
				message: 'Content from this page from google spreadsheet and vue.js'
			}
		});
	}

	function initTabletop(){
		Tabletop.init(
			{
				key: publicSpreadsheetUrl,
				callback: showInfo,
				simpleSheet: true
			}
		);
	}

	function showInfo(data, tabletop) {
		// Browser.alert('Successfully processed!');
		showSnackbar('Successfully processed!');
		console.log(data);
		// initPageAbout();
		vm.showloading = false;
		vm.sheet = data;
	}

	/**
	 *  @param isDark -
	 */
	function showLoading(isLoading:Bool,isDark:Bool = false) {
		// Get the loading DIV
		var x = document.getElementById("loading");

		// if no #loading exists, create it
		if(x == null){
			var div = document.createDivElement();
			div.id = 'loading';
			// div.innerHTML = '<i class="fa fa-refresh fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span>';
			div.innerHTML = '<i class="fas fa-sync-alt fa-spin fa-3x"></i><span class="sr-only">Loading...</span>';
			// div.innerHTML = '<i class="fas fa-spinner fa-pulse"></i>';
			document.body.appendChild(div);
			x = div;
		}

		if(isLoading){
			// Add the "show" class to DIV
			x.className = "show";
		} else {
			x.className = "hide";
		}
	}

	function showSnackbar(msg:String) {
		// Get the snackbar DIV
		var x = document.getElementById("snackbar");

		// if no #snackbar exists, create it
		if(x == null){
			var div = document.createDivElement();
			div.id = 'snackbar';
			document.body.appendChild(div);
			x = div;
		}

		// set msg to snackbar
		x.innerText = msg;

		// Add the "show" class to DIV
		x.className = "show";

		// After 3 seconds, remove the show class from DIV
		untyped setTimeout(function(){
			x.className = x.className.replace("show", "");
		}, 3000);

	}

	static public function main () {
		var app = new Main ();
	}
}
