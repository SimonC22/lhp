class EventsController < ApplicationController

  def index
    @events = Event.paginate(page: params[:page])
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "Thanks!"
      redirect_to events_url
    else
      render 'new'
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    flash[:success] = "Event deleted."
    redirect_to events_url
  end

  def edit
  end

  private

    def event_params
      params.require(:event).permit(:country_id, :name, :evtype_id, :date, :reference)
    end

end
