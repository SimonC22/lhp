class RelationshipsController < ApplicationController
  
  def index
    @relationships = Relationship.paginate(page: params[:page])
 
  end

  def new
    @relationship = Relationship.new
  end


  def create
    @relationship = Relationship.new(relationship_params)
    if @relationship.save
      flash[:success] = "Thanks!"
      redirect_to @relationship.country
    else
      render 'new'
    end
  end

  def destroy
    Relationship.find(params[:id]).destroy
    flash[:success] = "Relationship deleted."
    redirect_to relationships_url
  end

  private

    def relationship_params
      params.require(:relationship).permit(:country_id, :event_id)
    end

end
