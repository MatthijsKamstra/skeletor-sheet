package;

import template.Html;
import template.Html.*;
import template.TVue;
import template.TVue.*;
import template.Out;

class Template {
	static public function createVue() {
		var html = vue([
			div({id: 'app'}, [
				p({text: '{{ message }}'}),
				transition({
					'name': "custom-classes-transition",
					'enter-active-class': "animated fadeIn",
					'leave-active-class': "animated fadeOut",
				}, [
					div({'id': "loadervue", 'v-if': "showloading",}, [
						el('i', {'class': "fas fa-sync-alt fa-spin fa-3x"}),
						span({'class': "sr-only", text: 'Loading...'}),
					]),
				]),
				div({_class: "row"}, [
					div({_class: "col-sm-12 col-md-6 col-lg-4", 'v-for': "item in sheet"}, [
						div({_class: "card"}, [
							// img({'v-bind:src':"item.img", 'alt':"Card image cap", _class:"card-img-top"}),
							div({_class: "card-body"}, [
								h5({_class: "card-title", text: '{{ item.title }}'}),
								p({_class: "card-text", text: '{{ item.body }}'}),
								a({href: "#", _class: "btn btn-primary", text: 'read more'}),
							])
						])
					])
				])
			])
		]);
		return (html.toString());
	}
}
