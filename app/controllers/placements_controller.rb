class PlacementsController < ApplicationController
  before_action :find_placement, only: [:show, :edit, :update, :destroy]
  
  def index 
    @placement = Placement.all.order("created_at DESC")
  end
  
  def show 
  end
  
  def new 
    @placement = Placement.new
  end
  
  def create 
    @placement = Placement.new(placement_params)
    
    if @placement.save
      redirect_to @placement, notice: "Le nouveau placement a bien été crée."
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @placement.update(placement_params)
      redirect_to @placement
    else
      render 'edit'
    end
  end
  
  def detroy
    @placement.destroy
    redirect_to root_path, notice: "Le placement a bien été supprimé."
  end
  
  
  private 
  
  def placement_params
    params.require(:placement).permit(:title, :description)
  end
  
  def find_placement
    @placement = Placement.find(params[:id])
  end
end

