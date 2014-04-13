class CountriesController < ApplicationController

  def index
    @countries = Country.paginate(page: params[:page])
  end

  def show
    @country = Country.find(params[:id])
    @events = @country.events.paginate(page: params[:page])
    @relationships = @country.relationships.paginate(page: params[:page])
    @relationship = Relationship.new
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      flash[:success] = "Thanks!"
      redirect_to @country
    else
      render 'new'
    end
  end

  def destroy
    Country.find(params[:id]).destroy
    flash[:success] = "Country deleted."
    redirect_to countries_url
  end

  def edit
  end

  private

    def country_params
      params.require(:country).permit(:name)
    end

end
