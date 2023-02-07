class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def delete
        activity = Activity.find(activity_params)
        activity.destroy
        head: :no_content
    end

    private

    def activity_params 
        params.permit(:id, :name, :difficulty)
    end

    def render_not_found_response
        render json: { errors: "Activity not found" }, :not_found
    end


end
