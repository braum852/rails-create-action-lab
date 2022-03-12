class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(
      {
      first_name: params[:first_name],
        last_name: params[:last_name]
      }
    )
    redirect_to student_path(@student)
  end

  #student = Student.new
 # student.first_name = params[:students][:first_name]
  #student.last_name = params[:students][:last_name]
  #student.save
 # redirect_to students_path(@students)
  #end

end
