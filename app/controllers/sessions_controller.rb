class SessionsController < ApplicationController
    def new
    end
    def create
        #binding.break
        student=Student.find_by(email: params[:session][:email].downcase)
        if student && student.authenticate(params[:session][:password])
            session[:student_id]=student.id
            flash[:notice]="logged succe s #{session[:student_id]}"
            redirect_to student
        else

            flash[:now] = "User not found."
            render 'new'

         end
    end
    def destroy
        session[:student_id]=nil
        flash[:notice]="logged out"
        redirect_to root_path, status: :see_other

    end

end
