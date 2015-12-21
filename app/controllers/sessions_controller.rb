class SessionsController < ApplicationController
  
  def new
  end

  def create
    student = Student.find_by(emailId: params[:emailId])
    if student && student.authenticate(params[:password])
      # redirect user to respective home page
      
      session[:emailId] = student.emailId
      log_in student
      
      redirect_to student
    else
      flash.now[:error] = 'Invalid Email/password combination'
      #byebug
      render 'new'
    end
  end

  def destroy
    #session[:emailId] = nil
    redirect_to 'login'
  end
  
  
end
