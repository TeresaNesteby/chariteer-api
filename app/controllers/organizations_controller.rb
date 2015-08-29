class OrganizationsController < ApplicationController
  include SessionsHelper
  def index
  end

  def new
    @organization = Organization.new
  end

  def show
    @organization = Organization.new(organization_params)
    if @organization.save
      session[:id] = @organization.id
      redirect_to @organization #somewhere
      # ie: redirect_to @organization
    else
      flash[:error] = "email or password is wrong"
      render 'new'
    end
  end

  def edit
  end

  private
  def organization_params
    params.require(:organization).permit(:name, :mission_statement, :contact_email, :password, :non_profit, :website)
  end
end
