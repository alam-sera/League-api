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
      champion: params[:champion],
      origin: params[:origin],
      power_level: params[:power_level],
      picture: params[:picture]
    ).save
  end
  
  def update 
    league = League.find(params[:id])
    league.champion = params[:champion]
    league.origin = params[:origin]
    league.power_level = params[:power_level]
    league.picture = params[:picture]
    league.save
    render json: league.as_json
  end 

  def delete
    league = League.find(params[:id])
    league.destroy 
    render json: {message: "Succesfully destroyed"}
  end
end
