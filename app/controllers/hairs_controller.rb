class HairsController < ApplicationController

  def show
    @areas = Area.all
    @hairs = Area.first.hairs.first
  end

  def new
    @areas = Area.all
    @hairs = Area.first.hairs
    @hair = Hair.new
    @head = Area.first
  end


  def create
    @hair = Hair.new
    @area = Area.first
    # @hair.area = @area

    if @hair.save
    # @new_hair = Hair.new(hair_params)
    # @head = Area.first
    # if @new_hair.save
      @head.hairs << @hair
      flash[:message] = "yup"
      redirect_to new_area_hair_path
    else
      flash[:error] = "nope"
      redirect_to new_area_hair_path
    end
  end

  private

  def hair_params
    # params.require(:hair).permit(:x, :y, :rotate)
  end

end
