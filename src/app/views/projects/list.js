define(
	['jQuery', 'Underscore', 'Backbone',
	 'collections/projects',
	 'text!templates/project/list.html'],
	function($, _, Backbone, projectsCollection, projectListTemplate) {
		var projectListView = Backbone.View.extend({
			el: '#content',
			initialize: function() {
				this.collection = new projectsCollection;
				this.collection.add([{ name: 'BackOff' }, { name: 'Moip'}]);
				this.collection.add({ name: 'Big Ben' });

				var compiledTemplate = _.template(projectListTemplate, { projects: this.collection.models });

				$(this.el).html(compiledTemplate);
			}
		});

		return new projectListView;
	}
);
