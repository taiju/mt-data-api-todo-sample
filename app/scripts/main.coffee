window.MT6ToDo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new @Views.TodosView
      collection: new @Collections.TodosCollection
$ ->
  $.post(
    '/mt/mt-data-api.cgi/v1/token',
    clientId: 'mt6todo'
  ).done((json) =>
    $.ajaxSetup
      headers:
        'X-MT-Authorization': "MTAuth accessToken=#{json.accessToken}"
    do MT6ToDo.init
  ).fail((json) =>
    location.href = "/mt/mt-data-api.cgi/v1/authorization?redirectUrl=#{encodeURIComponent(location.href)}&clientId=mt6todo"
  )
