define ['Underscore', 'Backbone', 'models/project'],
	(_, Backbone, projectModel) ->
		projectsCollection = Backbone.Collection.extend
			model: projectModel
		return projectsCollection;
