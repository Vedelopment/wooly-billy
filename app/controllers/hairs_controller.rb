class HairsController < ApplicationController

  def show
  end

  def new
    @areas = Area.all
    @headHairs = Area.first.hairs
    @browHairs = Area.second.hairs
    @faceHairs = Area.third.hairs
    @hair = Hair.new
    @browHair = Hair.new
    @head = Area.first
  end

  def create
    @hair = Hair.new(hair_params)
    if hair_params[:area] == "Head"
      @hair.growable = Area.first
    elsif hair_params[:area] == "Brow"
      @hair.growable = Area.second
    elsif hair_params[:area] == "Face"
      @hair.growable = Area.third
    end

    if @hair.save
      redirect_to new_area_hair_path
    else
      flash[:error] = "Failed to save new hair."
      redirect_to new_area_hair_path
    end
  end

  def hair_destroyer
    Hair.delete_all
    redirect_to new_area_hair_path(:area_id => 1)
  end

  private

  def hair_params
    params.require(:hair).permit(:x, :y, :rotate, :area)
  end

end
