module IHeartQuotes

  # Fortune (Quote) Representation
  class Fortune
   
    # Quote Body
    attr_reader :quote

    # Related Tags
    attr_reader :tags

    # Link to the 'I <3 Quotes' Quote Page
    attr_reader :link

    # Where the quote comes from
    attr_reader :source

    def initialize(params={})
      @tags   = params['tags']
      @quote  = params['quote']
      @link   = params['link']
      @source = params['source']
    end

  end

end

