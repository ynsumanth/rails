$(document).ready(function(){
  Student = Backbone.Model.extend({});
  var student = new Student();
  
  student.url = '/students/2.json';
  
  student.fetch({
    success : function(){
      console.log(student.get(emailId));
    }
  });
  
  var Students = Backbone.Collection.extend({
    model : Student
  });
  var students = new Students();
  students.url = '/students.json';
  
  students.fetch({
    success : function(){
      console.log(students);
    }
  });
  
  
  var StudentView = Backbone.View.extend({})
});