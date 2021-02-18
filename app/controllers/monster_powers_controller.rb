class MonsterPowersController < ApplicationController
  def new
    @monster_power = MonsterPower.new
    @monster = Monster.find(params[:monster_id])
    @powers = Power.where.not(id: @monster.powers).order(name: :asc)
  end

  def create
    @monster = Monster.find(params[:monster_id])
    @monster_power = MonsterPower.new(monster_power_params)
    @monster_power.monster = @monster
    if @monster_power.save
      redirect_to house_path(@monster.house)
    else
      @powers = Power.where.not(id: @monster.powers).order(name: :asc)
      render :new
    end
  end

  private

  def monster_power_params
    params.require(:monster_power).permit(:power_id)
  end
end
