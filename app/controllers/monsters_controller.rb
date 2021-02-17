class MonstersController < ApplicationController
  def new
    # for our form
    @house = House.find(params[:house_id])
    @monster = Monster.new
  end

  def create
    @house = House.find(params[:house_id])
    @monster = Monster.new(monster_params)
    @monster.house = @house
    if @monster.save
      redirect_to house_path(@house)
    else
      render :new
    end
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to house_path(@monster.house)
  end

  private

  def monster_params
    # coming from the form
    params.require(:monster).permit(:name, :image_url, :species)
  end
end
