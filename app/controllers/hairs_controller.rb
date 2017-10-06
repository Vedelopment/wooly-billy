class HairsController < ApplicationController

  def show
    # @areas = Area.all
    # @headHairs = Area.first.hairs
  end

  def new
    @areas = Area.all
    @headHairs = Area.first.hairs
    @browHairs = Area.second.hairs
    @faceHairs = Area.third.hairs
    @hair = Hair.new
    @head = Area.first
  end

  def create
    @hair = Hair.new(hair_params)
    @hair.growable = Area.first
    @head = Area.first
    @brow = Area.second
    @face = Area.third
    if @hair.save
      puts @hair.hair_params
      @head.hairs << @hair
      # @brow.hairs << @hair
      # @face.hairs << @hair
      flash[:message] = "yup"
      redirect_to new_area_hair_path
    else
      flash[:error] =
      redirect_to new_area_hair_path
    end
  end

  def hair_destroyer
    Hair.delete_all
    redirect_to new_area_hair_path(:area_id => 1)
  end

  private

  def hair_params
    params.require(:hair).permit(:x, :y, :rotate)
  end

end
