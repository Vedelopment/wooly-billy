class AreasController < ApplicationController

  def index
    @areas = Area.all
    @hairs = Area.first.hairs
    @new_hair = Hair.new
    @head = Area.first
  end
  
  def show
    @areas = Area.all
    @hairs = Area.first.hairs
    @new_hair = Hair.new
    @head = Area.first
  end

  # def create
  #   new_hair = Hair.new(hair_params)
  #   @head = Area.first
  #   # new_hair.area  = @head
  #   if @new_hair = new_hair.save
  #   # if
  #   #   @hair = Hair.new(hair_params)
  #   #   @hair.save
  #     redirect_to area_path
  #   else
  #     flash[:error] = "nope"
  #     redirect_to root_path
  #   end
  # end
  #
  # private
  #
  # def hair_params
  #   params.require(:hair).permit(:x, :y, :rotate)
  # end
end
