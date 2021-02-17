class HousesController < ApplicationController
  before_action :set_house, only: [:show]

  # GET /houses/1
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_house
    @house = House.find(params[:id])
  end
end
