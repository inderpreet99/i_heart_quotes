describe IHeartQuotes::Fortune do

  before :all do
    @fortune = IHeartQuotes::Client.random
  end

  it 'should respond to quote with the quote body as string' do
    @fortune.quote.should be_an_instance_of String
    @fortune.quote.should_not be_empty
  end

  it 'should respond to link with an url to the fortune page' do
    @fortune.link.should =~ /http:\/\/iheartquotes\.com\/fortune\/show\/\d+/
  end

  it 'should respond to tags with an array of tags' do
    @fortune.tags.should be_an_instance_of Array
    @fortune.tags.each do |tag| 
      tag.should be_an_instance_of String 
      tag.should_not be_empty
    end
  end

  it 'should respond to source with the quote source' do
    @fortune.source.should be_an_instance_of String
    @fortune.source.should_not be_empty
  end

end
