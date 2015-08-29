class VolunteersController < ApplicationController
    def index
      volunteers = Volunteer.all
      render json: volunteers, status: 200
    end

    def bananas
      render json: params[:much_banana], status: 200
    end

    def create
      volunteer = Volunteer.new(volunteer_params)
      if volunteer.save
        render json: volunteer, status: 201
      else
        flash[:error] = "email or password is wrong"
        render status: 404
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
      params.require(:volunteer).permit(:first_name, :last_name, :email, :password)
    end
end
