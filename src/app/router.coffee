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
