class AuditsController < ApplicationController
    before_action :set_checklist, only: [:show, :destroy, :new]

    def index 
        @audits = Audit.all
        @checklists = Checklist.all
    end

    def new 
        @audit = Audit.new
        1.times { @audit.answers.build }
    end

    def create
        @audit = Audit.new(audit_params)
        if @audit.save
            redirect_to audits_path
        else 
            render :new
        end
    end

    private 

        def set_checklist
            @checklist = Checklist.find(params[:checklist_id])
        end

        def audit_params
            params.require(:audit).permit(:checklistname, :checklist_id, answers_attributes: [:id, :answer, :comment, :question_id])
        end
end