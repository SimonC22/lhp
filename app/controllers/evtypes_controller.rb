class EvtypesController < ApplicationController

  def index
    @evtypes = Evtype.paginate(page: params[:page])
  end

  def show
    @evtype = Evtype.find(params[:id])
  end

  def new
    @evtype = Evtype.new
  end

  def create
    @evtype = Evtype.new(evtype_params)
    if @evtype.save
      flash[:success] = "Thanks!"
      redirect_to evtypes_url
    else
      render 'new'
    end
  end

  def destroy
    Evtype.find(params[:id]).destroy
    flash[:success] = "Event type deleted."
    redirect_to evtypes_url
  end

  def edit
  end

  private

    def evtype_params
      params.require(:evtype).permit(:name)
    end

end