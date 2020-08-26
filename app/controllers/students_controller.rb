class StudentsController < ApplicationController

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def edit
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.create(student_params)
        # student = Student.create(studet_params)
        # could be without @ too because its a local var. and only is needed in the method
        redirect_to student_path(@student)
         #    SHORTCUT;
        # redirect_to @student
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
   
    end

    private

    def student_params
        params.require(:student).permit!
    end


end
