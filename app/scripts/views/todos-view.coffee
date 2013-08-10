class MT6ToDo.Views.TodosView extends Backbone.View

  el: '#todo-app'

  template: JST['app/scripts/templates/todos.ejs']

  events:
    'submit': 'createTodo'

  initialize: ->
    do @render

    @listenTo @collection, 'add', @addTodoItem
    @listenTo @collection, 'reset', @addAllTodoItems

    @collection.fetch data: @collection.params

  render: ->
    @$el.html (do @template)
    return @

  createTodo: (event) ->
    do event.preventDefault

    title = @$('#new-todo').val().trim()

    if title
      @collection.create new MT6ToDo.Models.TodoModel title: title

      $('#new-todo').val ''

  addTodoItem: (todo) ->
    view = new MT6ToDo.Views.TodoView model: todo
    @$('ul').append view.render().el

  addAllTodoItems: ->
    @collection.each @addTodoItem @
