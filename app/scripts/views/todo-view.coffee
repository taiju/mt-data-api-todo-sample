class MT6ToDo.Views.TodoView extends Backbone.View

  tagName: 'li'

  template: JST['app/scripts/templates/todo.ejs']

  events:
    'click input[type="checkbox"]': 'toggle'
    'dblclick span': 'toggleEdit'
    'submit form': 'toggleEdit'

  initialize: ->
    @listenTo @model, 'change', @render

  render: ->
    @$el.html @template (do @model.toJSON)
    return @

  toggle: ->
    do @model.toggle

  toggleEdit: ->
    input = @$('form input')
    title = input.val().trim()

    unless title
      do @model.destroy
      do @remove
      return

    @$el.toggleClass 'editing'

    if title is @model.get 'title'
      input.val title
      do input.focus
    else
      @model.set 'title', title
      do @model.save
      do @render
