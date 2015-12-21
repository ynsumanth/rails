window.StudentPortal =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    alert 'Hello from Backbone!'
    new StudentPortal.Routers.Students
    Backbone.history.start()

$(document).ready ->
  StudentPortal.initialize()
