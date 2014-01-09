class CountriesController < ApplicationController

  def index
    @countries = Country.paginate(page: params[:page])
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def edit
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

  private

    def country_params
      params.require(:country).permit(:name)
    end

end
