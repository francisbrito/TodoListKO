class Task
	constructor: (title, isDone = false) ->
		@title = ko.observable(title)
		@done = ko.observable(isDone)

# Maps an object to a Task.
Task.fromPOCO = (poco) ->
	title = poco.title || ''
	done = poco.done || false

	return new Task title, done
class AppViewModel
    constructor: ->
        @newTask = ko.observable new Task()
        @tasks   = ko.observableArray([])

    addTask: =>
        title = @newTask().title()

        # Adds a new task to the collection.
        @tasks.push new Task title, false

        # Clear task container.
        @newTask().title('')

     fetch: (url = 'http://localhost:9000/demo_tasks.json') =>
        $.getJSON url,
            (data) ->
                if data instanceof Array inst true
                    throw 'Service should return an array.'

                data.forEach (t) ->
                    @tasks.push Task.fromPOCO t
            ,
            (err) ->
                throw {msg: 'Unable to fetch tasks.', inner: err}

window.App = new AppViewModel()

App.fetch()

ko.applyBindings App
