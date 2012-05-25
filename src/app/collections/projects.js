define(
	['Underscore', 'Backbone', 'models/project'],
	function(_, Backbone, projectModel) {
		var projectsCollection = Backbone.Collection.extend({
			model: projectModel
		});
	
		return projectsCollection;
	}
);
