module IHeartQuotes

  # I <3 Quotes Client
  class Client
    
    # Random call API path
    RANDOM_PATH  = '/api/v1/random?format=json'

    include HTTParty

    self.base_uri 'http://iheartquotes.com'
    self.format :json

    def self.random
      return Fortune.new(self.get(RANDOM_PATH))
    end

  end

end

