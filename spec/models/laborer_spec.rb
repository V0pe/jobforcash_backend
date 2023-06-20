require 'rails_helper'

RSpec.describe Laborer, type: :model do
  describe 'validations' do
    before(:each) do
      @laborer = Laborer.create(name: 'Wimpy', skill: 'carpenter', description: 'Awesome at what I do', country: 'Mexico', city: 'Tijuana', price: 100)
    end
    it 'should be valid' do
      expect(@laborer).to be_valid
    end
    it 'should validate laborer name' do
      @laborer.name = 'Wimpy'
      expect(@laborer).to be_valid
    end
    it 'should validate skill' do
      @laborer.skill = 'carpenter'
      expect(@laborer).to be_valid
    end
    it 'should validate laborer description' do
      @laborer.description = 'Just bitchin at my job'
      expect(@laborer).to be_valid
    end
    it 'should validate country' do
      @laborer.country = 'Uganda'
      expect(@laborer).to be_valid
    end
    it 'should validate city' do
      @laborer.city = 'Uga-uga'
      expect(@laborer).to be_valid
    end
    it 'should validate price' do
      @laborer.price = nil
      expect(@laborer).to_not be_valid
    end
  end
end