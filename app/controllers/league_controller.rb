class LeagueController < ApplicationController
  def index
    league = League.all
    render json: league.as_json
  end 

  def show
    number = params[:id]
    single = League.find(number)
    render json: single 
  end

  def create 
    league = League.new(
      name: params[:name],
      origin: params[:origin],
      power_level: params[:power_level],
      picture: params[:picture]
    )
    League.save
  end
  
end
