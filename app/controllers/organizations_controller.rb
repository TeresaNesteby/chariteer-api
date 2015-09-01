class OrganizationsController < ApplicationController
  def index
    organizations = Organization.all
    render json: organizations, status: 200
  end

  def create
    organization = Organization.new(name: params[:name], mission_statement: params[:mission_statement], phone_number: params[:phone_number], email: params[:email], website_url: params[:website_url], logo_image: params[:logo_image])
    if organization.save
      organization.token = "OK"
      organization.save
      render json: organization, status: 201
    else
      render status: 404
    end
  end

  def edit
  end

  # private
  # def organization_params
  #   params.require(:organization).permit(:name, :mission_statement, :phone_number, :email, :password, :website_url, :logo_image)
  # end
end
