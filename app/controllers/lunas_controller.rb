class LunasController < ApplicationController
  def index
    @lunas = Luna.all
  end

  def create
    date_string = params[:date]
    date_array = date_string.split("-")
    date_time = Time.new(date_array[0], date_array[1], date_array[2])
    timestamp = date_time.to_i
    moon_api = Adapters::MoonConnection.new
    luna = moon_api.query(timestamp)
    @luna = Luna.new(luna)
    @luna.save
    redirect_to luna_path(@luna)
  end

  def show
    @luna = Luna.find(params[:id])
    @luna_age = @luna.age
  end


end
