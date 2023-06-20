require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'validations' do
    before(:each) do
      @user = User.create(username: 'Jones', email: 'jones@gmail.com', password: 'jones123')
      @laborer = Laborer.create(name: 'Wimpy', skill: 'carpenter', description: 'Awesome at what I do',
                                country: 'Mexico', city: 'Tijuana', price: 100)
      @reservation = Reservation.create(user_id: @user.id, laborer_id: @laborer.id, start_date: '2025-01-01',
                                        number_days: 5)
    end
    it 'should be valid' do
      expect(@reservation).to be_valid
    end
    it 'should validate users name' do
      @user.username = 'William'
      expect(@user).to be_valid
    end
    it 'should validate laborers name' do
      @laborer.name = 'Wimpy'
      expect(@laborer).to be_valid
    end
    it 'should validate skill' do
      @laborer.skill = 'carpenter'
      expect(@laborer).to be_valid
    end
    it 'should validate number of days' do
      @reservation.number_days = 0
      expect(@reservation).to_not be_valid
    end
    it 'should validate start_date (not valid)' do
      @reservation.start_date = '2020-01-01'
      expect(@reservation).to_not be_valid
    end
    it 'should validate start_date' do
      @reservation.start_date = '2025-09-01'
      expect(@reservation).to be_valid
    end
  end
end
