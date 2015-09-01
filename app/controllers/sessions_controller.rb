class SessionsController < ApplicationController

  def create
     volunteer = Volunteer.find_by(email: params[:volunteer][:email])
     organization = Organization.find_by(email: params[:organization][:email])
     if volunteer.present?
      if volunteer.authenticate(params[:volunteer][:password])
      # Save the volunteer ID in the session so it can be used in
      # subsequent requests
        session[:id] = volunteer.id
        volunteer.token = "OK"
        volunteer.save
        render json: volunteer, status: 200
      end

     elsif organization.present?
      if organization.authenticate(params[:organization][:password])
      # Save the organization ID in the session so it can be used in
      # subsequent requests
        session[:id] = organization.id
        organization.token = "OK"
        organization.save
        render json: organization, status: 200
      end
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:id] = nil

    if volunteer = Volunteer.find(params[:id])
      volunteer.update(token: nil)
    elsif organization = Organization.find(params[:id])
      organization.update(token: nil)
    end

  end
end
