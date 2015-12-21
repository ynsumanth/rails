module SessionsHelper
    def log_in(user)
      
        session[:student_id] = user.id;
        #byebug
        
    end
    
    def current_user
      if @current_user.nil?
        @current_user = Student.find(params[:session][:emailId].downcase)
      else 
        @current_user
      end
    end
    
    def logged_in?
      !@current_user.nil?
    end
end
