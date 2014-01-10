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

  def edit
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "Thanks!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

    def event_params
      params.require(:event).permit(:name, :country_is, :type, :date, :reference)
    end

end
