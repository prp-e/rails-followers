class RelationshipsController < ApplicationController
    def index
        @active_relationships = current_user.active_relationships
        @passive_relationships = current_user.passive_relationships
    end 

    def create
        @followed_user = User.find(params[:relationship][:followed_id])
        @relationship = current_user.active_relationships.new(followed_id: @followed_user.id)
        if relationship.save
            flash[:notice] = "done"
            redirect_to "/profile/#{@followed_user.id}"
        else 
            flash[:notice] = "failed"
        end 
    end 
end
