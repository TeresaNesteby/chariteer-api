class ApplicationController < ActionController::API
  def current_volunteer
    @current_volunteer ||=Volunteer.find_by(id: session[:id]) if session[:id]
  end

  def current_organization
    @current_organization ||=Organization.find_by(id: session[:id]) if session[:id]
  end
end
