class StudentsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy ]
  def index
    @students = Student.all
  end
  def new
    @student = Student.new
  end
  def show
  end
  def create
    @student = Student.new(student_params)
   
    respond_to do |format|
      if @student.save
        format.html { redirect_to student_url(@student), notice: "Student  #{@student.name} was successfully created." }
        format.json { render :show, status: :created, location: @student }
       
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1 or /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to student_url(@student), notice: "Student  #{@student.name}was successfully updated." }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1 or /students/1.json
  def destroy
    @student.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Student was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:name, :password, :email, :pojectname, :instructorname, :year_of_study)
    end
end
