require_relative '../spec_helper'

describe IHeartQuotes::Client do
 
  it 'should return a random Fortune when requested' do
    IHeartQuotes::Client.random.should be_an_instance_of IHeartQuotes::Fortune
    IHeartQuotes::Client.new.random.should be_an_instance_of IHeartQuotes::Fortune
  end

  describe 'filtered by source' do

    it 'should return only quotes from the target source' do
      IHeartQuotes::Client.where({:source => 'hitchhiker'}).random.source.should == 'hitchhiker'
      IHeartQuotes::Client.where({:source => 'cryptonomicon'}).random.should be_an_instance_of IHeartQuotes::Fortune
    end

  end

  describe 'with valid filters' do

    it 'should return a valid quote' do
      IHeartQuotes::Client.where({:source => 'hitchhiker+cryptonomicon'}).where(:max_lines => 1).random.should be_an_instance_of IHeartQuotes::Fortune
    end

  end

end
