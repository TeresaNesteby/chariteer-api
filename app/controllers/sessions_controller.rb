class SessionsController < ApplicationController
  def new
  end

  def index
  end

  def create
     if @volunteer = Volunteer.find_by(email: params[:volunteer][:email]).present?
      if @volunteer.authenticate(params[:volunteer][:password])
      # Save the volunteer ID in the session so it can be used in
      # subsequent requests
        session[:id] = @volunteer.id
        redirect_to volunteer_path
      end

     elsif organization = Organization.find_by(email: params[:organization][:email]).present?
      if organization.authenticate(params[:organization][:password])
      # Save the organization ID in the session so it can be used in
      # subsequent requests
        session[:id] = organization.id
        redirect_to organization_path(organization)
      end
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end
end
