module IHeartQuotes

  # I <3 Quotes Client
  class Client

    # Random call API path
    RANDOM_PATH  = '/api/v1/random'

    include HTTParty

    self.base_uri 'http://iheartquotes.com'
    self.format :json

    def initialize
      @options = {:format => 'json'}
    end

    # Instanciates an IHeartQuotes::Client object and
    # return a randome IHeartQuotes::Fortune
    #
    # @return <IHeartQuotes::Fortune>
    def self.random
      Client.new.random
    end
   
    # Instantiates an IHeartQuotes::Client object and 
    # set the given options via the where method
    #
    # @return <IHeartQuotes::Client>
    def self.where(opts)
      Client.new.where(opts)
    end

    # Gets a random fortune
    #
    # @return <IHeartQuotes::Fortune>
    def random
      return Fortune.new(self.class.get(RANDOM_PATH, :query => @options))
    end


    # Sets filters for the fortunes search
    #
    # Filters Supported:
    # * :source ("+" separated list of desired sources - available sources at http://iheartquotes.com/api)
    # * :max_lines (maximum number of lines in the quote)
    # * :min_lines (minumum number of lines in the quote)
    # * :max_characters (maximum number of characters in the quote)
    # * :min_characters (minimum number of characters in the quote)
    #
    # @param {Symbol => String,Number} opts filters to be set
    # @return <IHeartQuotes::Client>
    def where(opts)
      opts.delete(:format)
      @options.merge!(opts)
      self
    end

  end

end

