require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    # initialize item
    @digitalItem = DigitalItem.new('The Woman In The Low Fort', 9.99, 1)
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of DigitalItem
    it 'should be a digital item' do
      expect(@digitalItem).to be_instance_of(DigitalItem)
    end

    # check that it is an extended from Item
    it 'should be an item' do
      expect(@digitalItem).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digitalItem.name).to eq('The Woman In The Low Fort')
    end

    it 'is assigned a price' do
      expect(@digitalItem.price).to eq(9.99)
    end

    it 'is assigned a quantity' do
      expect(@digitalItem.quantity).to eq(1)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @digitalItem.name = 'Now 4'
      expect(@digitalItem.name).to eq('Now 4')
    end

    it 'assigns and reads the price' do
      @digitalItem.price = 20.00
      expect(@digitalItem.price).to eq(20.00)
    end

    it 'reads the quantity' do
      expect(@digitalItem.quantity).to eq(1)
    end

    it 'should not assign the quantity' do
      @digitalItem.quantity = 5 if respond_to? :quantity=
      expect(@digitalItem.quantity).to eq(1)
    end
  end

  # check methods
  describe 'methods' do
    it 'should not reduce the quantity when sold' do
      @digitalItem.sell(4)
      expect(@digitalItem.quantity).to eq(1)
    end
    it 'should not increase the quantity on stock' do
      @digitalItem.stock(4)
      expect(@digitalItem.quantity).to eq(1)
    end
  end
end
