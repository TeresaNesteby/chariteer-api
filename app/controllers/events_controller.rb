class EventsController < ApplicationController

  def index
    organization = Organization.find(params[:organization_id])
    events = organization.events
    render json: events, status: 200
  end

  def create
    event = Event.new(event_params)
    if event.save
      render json: event, status: 201
    else
      render status: 404
    end
  end

  def show
    event = Event.find(params[:id])
    render json: event, status: 201
  end

  def update
  end

  private
  def event_params
    params.require(:event).permit(:name, :category_id, :organization_id, :volunteer_id)
  end

end
