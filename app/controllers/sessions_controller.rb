class SessionsController < ApplicationController
  def index
    render json: Volunteer.all
  end

  def create
     volunteer = Volunteer.find_by(email_param)

     organization = Organization.find_by(email: params[:email])
     if volunteer.present?
      # if volunteer.authenticate(params[:volunteer][:password])
      # Save the volunteer ID in the session so it can be used in
      # subsequent requests
        volunteer.token = "OK" #SecureRandom.hex
        volunteer.save
        render json: {volunteer: volunteer}, status: 200
      # end

     elsif organization.present?
      if organization.authenticate(params[:organization][:password])
      # Save the organization ID in the session so it can be used in
      # subsequent requests
        # session[:id] = organization.id
        # organization.token = "OK"
        organization.save
        render json: {organization: organization}, status: 200
      end
    # else
      # flash[:danger] = 'Invalid email/password combination'
      # render 'new'
    end
  end

  def destroy
    if volunteer = Volunteer.find(params[:id])
      volunteer.update(token: nil)
    elsif organization = Organization.find(params[:id])
      organization.update(token: nil)
    end
  end

  private
  def email_param
    params.permit(:email)
  end
end
