define ['Underscore', 'Backbone'],
	(_, Backbone) ->
		projectModel = Backbone.Model.extend
			defaults: {	name: 'Harry Potter' }
		return projectModel;
