class LunasController < ApplicationController
  def index
    @luna = Adapters::MoonConnection.new
    @luna_data = render json: @luna.query(730530000)
  end

  def create
    date_string = params[:date]
    date_time = Time.new(date_string)
    timestamp = date_time.to_i
    moon = @luna.query(timestamp)
    binding.pry
  end


end
