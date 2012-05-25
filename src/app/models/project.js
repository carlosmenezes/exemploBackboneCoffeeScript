define(
	['Underscore', 'Backbone'],
	function(_, Backbone) {
		var projectModel = Backbone.Model.extend({
			defaults: {
				name: 'Harry Potter'
			}
		});
	
		return projectModel;
	}
);
