class EventsController < ApplicationController
  def create
    @event = Event.new(new_event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @events = Event.order(:name)
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def new_event_params
    params.require(:event).permit(:name, :location, :description, :date)
  end
end
