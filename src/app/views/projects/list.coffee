define ['jQuery', 'Underscore', 'Backbone', 'collections/projects', 'text!templates/project/list.html'],
	($, _, Backbone, projectsCollection, projectListTemplate) ->
		projectListView = Backbone.View.extend
			el: '#content',
			initialize: ->
				@collection = new projectsCollection;
				@collection.add [{ name: 'BackOff' }, { name: 'Moip'}]
				@collection.add { name: 'Big Ben' };

				compiledTemplate = _.template projectListTemplate, { projects: @collection.models }

				$(@el).html(compiledTemplate)
			return new projectListView
