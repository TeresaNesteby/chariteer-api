class EventsController < ApplicationController

  def index
    organizations = Organization.all
    # filtered_oraganization = Organization.find(params[:organization_id])
    events = Event.all
    filtered_events_by_category = events.where(category_id: params[:category_id])

    categories = Category.all
    render json: {filtered_events_by_category: filtered_events_by_category, events: events, organizations: organizations, categories: categories}, status: 200
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
    params.require(:event).permit(:name, :category_id, :organization_id, :org_name, :location, :date, :times, :num_of_volunteers_needed, :volunteer_id)
  end

end
