class StudentsController < ApplicationController
  before_action :load_student, only: [:edit, :update, :destroy]

  def index
    @students = Student.all
    @student = Student.new
  end

  def create
    student = Student.find_or_initialize_by(
      name: student_params[:name], 
      subject_name: student_params[:subject_name]
    )
    
    if student.persisted?
      # If student exists, update their marks
      student.marks += student_params[:marks].to_i
      flash[:success] = 'Student marks updated successfully.'
    else
      # If new student, create the record
      student.marks = student_params[:marks]
      flash[:success] = 'Student added successfully.'
    end

    if student.save
      redirect_to root_path
    else
      flash[:error] = 'Failed to add or update student.'
      redirect_to root_path
    end
  end

  def update
    if @student.update(student_params)
      flash[:success] = 'Student updated successfully.'
    else
      flash[:error] = 'Failed to update student.'
    end
    redirect_to root_path
  end

  def destroy
    @student.destroy
    flash[:success] = 'Student deleted successfully.'
    redirect_to root_path
  end

  private

   def load_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :subject_name, :marks)
  end
end
