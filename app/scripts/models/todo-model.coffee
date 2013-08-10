class MT6ToDo.Models.TodoModel extends Backbone.Model

  urlRoot: '/mt/mt-data-api.cgi/v1/sites/1/entries'

  defaults:
    title: ''
    status: 'Draft'

  toggle: ->
    @save
      status: if (@get 'status') is 'Draft' then 'Publish' else 'Draft'

  sync: (method, model, options) ->
    options.contentType = 'application/json'
    options.data = JSON.stringify entry: do model.toJSON
    Backbone.sync method, model, options
