require_relative 'spec_helper'
require_relative '../lib/bluray'
describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Arrival', 15.00, 59, 'Jed Bartlet', 'Dolores Landingham')
  end
  # check initialization
  describe 'Initialization' do
  # check that it is an extended from Item
    it "should be an item" do
      expect(@bluray).to be_kind_of(Item)
    end
  # check that it is an instance of Bluray
    it "should be a bluray" do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'is assigned a name' do
      expect(@bluray.name).to eq('Arrival')
    end
    it 'is assigned a price' do
      expect(@bluray.price).to eq(15.00)
    end
    it 'is assigned a run time' do
      expect(@bluray.run_time).to eq(59)
    end
    it 'is assigned a director' do
      expect(@bluray.director).to eq('Jed Bartlet')
    end
    it 'is assigned assigned a producer' do
      expect(@bluray.producer).to eq('Dolores Landingham')
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Now 4'
      expect(@bluray.name).to eq('Now 4')
    end
    it 'assigns and reads the price' do
      @bluray.price = 20.00
      expect(@bluray.price).to eq(20.00)
    end
    it 'assigns and reads the run time' do
      @bluray.run_time = 45
      expect(@bluray.run_time).to eq(45)
    end
    it 'assigns and reads the director' do
      @bluray.director = 'Joey Lucas'
      expect(@bluray.director).to eq('Joey Lucas')
    end
    it 'assigns and reads the producer' do
      @bluray.producer = 'CJ Cregg'
      expect(@bluray.producer).to eq('CJ Cregg')
    end
  end
end
