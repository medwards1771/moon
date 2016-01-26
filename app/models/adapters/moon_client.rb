module Adapters
  class MoonClient

    def connection
      @connection = Adapters::MoonConnection.new
    end

    # please change this method name
    def query_moon_api
      result = connection.query
    end
  end
end