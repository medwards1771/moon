module Adapters
  class MoonConnection
    include HTTParty
    attr_reader :connection 

    def initialize
      @connection = self.class
    end

    def query(timestamp)
      result = connection.get("http://api.burningsoul.in/moon/#{timestamp}")
    end
  end
end