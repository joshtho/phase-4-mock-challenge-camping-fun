class ActivitiesController < ApplicationController
    def delete
        activity = Activity.find_by(id: params[:id])
        activity.destroy
        head: :no_content
    end

end
