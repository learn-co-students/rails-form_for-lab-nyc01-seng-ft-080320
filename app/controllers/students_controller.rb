class StudentsController < ApplicationController

    def show
        @student = grab_student;
    end

    def edit
        @student = grab_student;
    end

    def update
        @student = grab_student;
        @student.update(student_params(:first_name, :last_name));
        redirect_to student_path(@student);
    end
    
    def new
        @student = Student.new;
    end
    
    def create
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student);
    end
    

    private
    
    def grab_student
        Student.find(params[:id]);
    end

    def student_params(*args)
        params.require(:student).permit(*args)
    end
end
