class MT6ToDo.Collections.TodosCollection extends Backbone.Collection

  model: MT6ToDo.Models.TodoModel

  url: '/mt/mt-data-api.cgi/v1/sites/1/entries'

  initialize: ->
    @params =
      status: 'Draft,Publish'
      fields: 'id,title,status'

  parse: (response) ->
    response.items
