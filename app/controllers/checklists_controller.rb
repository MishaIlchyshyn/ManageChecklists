class ChecklistsController < ApplicationController
    before_action :set_checklist, only: [:show, :destroy]

    def index
        @checklists = Checklist.paginate(page: params[:page], per_page: 10) 
    end

    def new 
        @checklist = Checklist.new
    end

    def create 
        @checklist = Checklist.new(checklist_params)
        if @checklist.save
            flash[:notice] = "Checklist was created"
            redirect_to checklists_path
        else
            render 'new'
        end
    end
    
    def show
    end

    def destroy
        @checklist.destroy
        flash[:notice] = "Checklist was delete"
        redirect_to checklists_path
    end

    def fill_checklist
        @checklists = Checklist.all
        respond_to do |format|
            format.html
            format.js
        end
    end

    private

        def checklist_params
            params.require(:checklist).permit(:title, :description, questions_attributes: [:id, :title, :description, :_destroy])
        end

        def set_checklist
            @checklist = Checklist.find(params[:id])
        end
end