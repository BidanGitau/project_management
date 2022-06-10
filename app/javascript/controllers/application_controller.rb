class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning
  helper_method :current_student
  def current_student
    @current_student ||=Student.find(session[:student_id]) if session[:student_id]
  end
end
