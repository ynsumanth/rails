class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  include SessionsHelper
  
  def is_search_course_present?
    if !session[:courseSearched].nil?
      return true
    else
      return false
    end
  end
end
