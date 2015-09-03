class OrganizationsController < ApplicationController
  def index
    organizations = Organization.all
    events = Event.all
    render json: {organizations: organizations, events: events}, status: 200
  end

  def create
    organization = Organization.new(organization_params)
    if organization.save
      # organization.token = "OK"
      # organization.save
      render json: {organization: organization}
    else
      render json: {error: "Organization was not created."}
    end
  end

  def edit
  end

  private
  def organization_params
    params.permit(:name, :mission_statement, :non_profit, :phone_number, :email, :password, :website_url, :logo_image)
  end
end


