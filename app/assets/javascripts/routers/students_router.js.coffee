class StudentPortal.Routers.Students extends Backbone.Router
    routes:
        '' : 'index'
    
    index:->
        students = new StudentPortal.Collections.Students
        new StudentPortal.Views.StudentsIndex collection: students
        students.fetch()
