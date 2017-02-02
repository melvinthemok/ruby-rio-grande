require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Max 5: Today\'s Latest Hits', 15.00, 15, 'Assorted', 52)
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of Cd
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    # check that it is an extended from Item
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Max 5: Today\'s Latest Hits')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(15.00)
    end

    it 'is assigned a number of tracks' do
      expect(@cd.tracks).to eq(15)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Assorted')
    end

    it 'is assigned assigned a run time' do
      expect(@cd.run_time).to eq(52)
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Now 4'
      expect(@cd.name).to eq('Now 4')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the number of tracks' do
      @cd.tracks = 18
      expect(@cd.tracks).to eq(18)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'Various'
      expect(@cd.artist).to eq('Various')
    end

    it 'assigns and reads the run time' do
      @cd.run_time = 59
      expect(@cd.run_time).to eq(59)
    end
  end
end
