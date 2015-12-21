class StudentPortal.Views.StudentsIndex extends Backbone.View
  el: '#app'
  template: JST['students/index']
  
  initialize: ->
    @collection.bind 'reset', @render, @
    
  render: ->
    $(@el).html(@template(student: @model))
    @
    
    @collection.each(student) =>
      view = new StudentPortal.Views.StudentIndex model: student
      @$('#students').append(view.render().el)
    
    @
