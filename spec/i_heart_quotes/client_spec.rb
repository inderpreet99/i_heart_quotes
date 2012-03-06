require_relative '../spec_helper'

describe IHeartQuotes::Client do

  it 'should return a random Fortune when requested' do
    IHeartQuotes::Client.random.should be_an_instance_of IHeartQuotes::Fortune
  end

end
