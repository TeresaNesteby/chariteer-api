class OrganizationsController < ApplicationController
  def index
    organizations = Organization.all
    render json: organizations, status: 200
  end

  def create
    organization = Organization.new(organization_params)
    if organization.save
      render json: organization, status: 201
    else
      render status: 404
    end
  end

  def edit
  end

  private
  def organization_params
    params.require(:organization).permit(:name, :mission_statement, :phone_number, :email, :password, :non_profit, :website_url)
  end
end
