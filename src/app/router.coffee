define ['jQuery', 'Underscore', 'Backbone', 'views/projects/list', 'views/users/list'],
	($, _, Backbone, Session, projectListView, userListView) ->
		AppRouter = Backbone.Router.extend
			routes: {
				'/projects' : 'showProjects',
				'/users' : 'showUsers',

				# Default route
				'*actions': 'defaultAction'
			},
			# configura a action para a rota /projects
			showProjects: ->	projectListView.render,
			# configura a action para a rota /users
			showUsers: ->	userListView.render,
			# configura a action default
			defaultAction: ->	console.log 'No route:', actions
		initialize = ->
			app_router = new AppRouter
			Backbone.history.start

		return { initialize : initialize }


#define(
#	['jQuery', 'Underscore', 'Backbone',
#	 'views/projects/list', 'views/users/list'],
#	function($, _, Backbone, Session, projectListView, userListView) {
#		var AppRouter = Backbone.Router.extend({
#			routes: {
#				'/projects' : 'showProjects',
#				'/users' : 'showUsers',

#				// Default route
#				'*actions': 'defaultAction'
#			},
#			// configura a action para a rota /projects
#			showProjects: function() {
#				projectListView.render();
#			},
#			// configura a action para a rota /users
#			showUsers: function() {
#				userListView.render();
#			},
#			// configura a action default
#			defaultAction: function() {
#				console.log('No route:', actions);
#			}
#		});

#		var initialize = function() {
#			var app_router = new AppRouter;
#			Backbone.history.start();
#		};
#		return { initialize : initialize };
#	}
#);
