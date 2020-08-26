class SchoolClassesController < ApplicationController

    def show
      @school_class = sc_graberino;
    end

    def edit
        @school_class = sc_graberino;
    end

    def update
        @school_class = sc_graberino;
        @school_class.update(ramapama(:title, :room));
        redirect_to school_class_path(@school_class);
    end
    
    def new
        @school_class = SchoolClass.new;
    end

    def create
        @school_class = SchoolClass.new(ramapama(:title, :room));
        @school_class.save;
        redirect_to school_class_path(@school_class);
    end

    private

    def sc_graberino
        SchoolClass.find(params[:id])
    end

    def ramapama(*args)
        params.require(:school_class).permit(*args);
    end
end
