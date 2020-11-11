class PublishChecklistsController < ApplicationController
    before_action :set_checklist, only: [:create, :destroy]
    before_action :authenticate_user!

    def create
        if Publish.create(published: @checklist, user: current_user)
            redirect_to checklists_path, notice: 'Checklist has been published'
        else
            redirect_to @checklist, alert: 'Something went wrong...*sad panda*'
        end
    end

    def destroy 
        Publish.where(published_id: @checklist.id, user_id: current_user.id).first.destroy
        redirect_to checklists_path, notice: 'Checklist in no longer in published'
    end 

    private

        def set_checklist
            @checklist = Checklist.find(params[:checklist_id] || params[:id])
        end
end