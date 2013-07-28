class Task
	constructor: (title, isDone = false) ->
		@title = ko.observable(title);
		@done = ko.observable(isDone);

# Maps an object to a Task.
Task.fromPOCO = (poco) ->
	title = poco.title || ''
	done = poco.done || false

	return new Task title, done

class AppViewModel
	constructor: ->
		# This is required due to how scope works in JavaScript.
		self = @

		self.newTask = ko.observable new Task()

		self.tasks = ko.observableArray([])

		self.addTask = ->

			title = self.newTask().title()

			self.tasks.push new Task title, false

			# Clear title
			self.newTask().title('')

		self.fetch = (serviceUrl = 'http://localhost:9000/demo_tasks.json') ->
			# Request JSON from serviceUrl
			$.getJSON serviceUrl, 
				(data) -> 
					if data instanceof Array isnt true
						throw 'Service should return an array.'

					data.forEach (t) ->
						self.tasks.push Task.fromPOCO t
				,
				(err) ->
					throw err


window.App = new AppViewModel()

App.fetch()

ko.applyBindings App