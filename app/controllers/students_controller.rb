class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)

        redirect_to students_path
    end


    def new
        @student = Student.new
    end

    def create
        Student.create(student_params)
        redirect_to students_path
    end

    private
    def student_params(*args)
        # params.require(:person).permit(:name, :age, pets_attributes: [ :id, :name, :category ])
        params.require(:student).permit!
    end

end
