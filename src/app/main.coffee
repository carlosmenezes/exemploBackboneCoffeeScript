require.config
	paths: {
		jQuery: 'libs/jquery',
		Underscore: 'libs/underscore',
		Backbone: 'libs/backbone'
	}

require [
	'app',
	'order!libs/jquery-min',
	'order!libs/underscore-min',
	'order!libs/backbone-min'
], (App) -> App.initialize
