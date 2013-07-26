class Task
	constructor: (title, isDone = false) ->
		@title = ko.observable(title);
		@done = ko.observable(isDone);

class AppViewModel
	constructor: ->
		@newTaskTitle = ko.observable ''
		@tasks = ko.observableArray([])

		@tasks.push new Task t.title, t.done for t in [
			{
				title: '(Re-)Learn Knockout.js'
				done: true
			}
			{
				title: 'Practice Knockout.js'
				done: false
			}
			{
				title: '???'
				done: false
			}
			{
				title: 'Profit'
				done: false
			}
		]
		console.dir @tasks()

	addNewTask: ->
		newTask = new Task @newTaskTitle()

		console.log newTask.title()
		console.log newTask.done()

		@tasks.push newTask


window.App = new AppViewModel()

ko.applyBindings App