class VolunteersController < ApplicationController
    def index
      volunteers = Volunteer.all
      render json: volunteers, status: 200
    end

    def create
      volunteer = Volunteer.new(volunteer_params)
      if volunteer.save
        render json: {volunteer: volunteer}
      else
        render json: {error: "Volunteer was not created."}
      end
    end

    def show
      volunteer = Volunteer.find(params[:id])
      render json: volunteer, status: 201
    end

    # def update
    #   volunteer = Volunteer.find(1)
    #   render json: volunteer, status: 200
    # end

    private
    def volunteer_params
      params.permit(:first_name, :last_name, :email, :interest, :photo_url, :password)
    end
end
