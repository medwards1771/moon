class LunasController < ApplicationController
  def index
    @lunas = Luna.all
  end

  def create
    date_string = params[:date]
    date_time = Time.new(date_string)
    timestamp = date_time.to_i
    moon_api = Adapters::MoonConnection.new
    luna = moon_api.query(timestamp)
    @luna = Luna.new(luna)
    @luna.save
    redirect_to luna_path(@luna)
  end

  def show
    @luna = Luna.find(params[:id])
  end


end
