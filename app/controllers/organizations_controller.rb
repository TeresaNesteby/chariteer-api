class OrganizationsController < ApplicationController
  def index
    organizations = Organization.all
    render json: organizations, status: 200
  end

  def create
    p "*" * 80
    p "Params are:..............."
    p params
    # organization = Organization.new(name: params[:name], mission_statement: params[:mission_statement], non_profit: params[:non_profit], phone_number: params[:phone_number], email: params[:email], password: params[:password], website_url: params[:website_url], logo_image: params[:logo_image])

    p "GETTING INTO SERVER, CREATE ROUTE"
    organization = Organization.new(organization_params)
    if organization.save
      p "INSIDE CREATION MODE, ORGANIZATION SAVED"
      p organization
      # organization.token = "OK"
      # organization.save
      render json: {organization: organization}
      p organization
      p "----" * 50
    else
      p "INSIDE CREATION MODE, ORGANIZATION FFAAAAIIIILLLLLL"
      render json: {thing: "superthing"}
    end
  end

  def edit
  end

  private
  def organization_params
    p "Inside organization params..................."
    p params
    p params.permit(:name, :mission_statement, :non_profit, :phone_number, :email, :password, :website_url, :logo_image)
  end
end
