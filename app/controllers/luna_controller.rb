class LunaController < ApplicationController
  def index
    @luna = Adapters::MoonConnection.new
    @luna_data = render json: @luna.query(730530000)
  end
end
