require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    before(:each) do
      @user = User.create(username: 'Wimpy', email: 'wimpy@gmail.com', password: 'wimpy123')
    end
    it 'should be valid' do
      expect(@user).to be_valid
    end
    it 'should validate username' do
      @user.username = 'Larry'
      expect(@user).to be_valid
    end
    it 'should validate email' do
      @user.email = 'wimpy@gmail.com'
      expect(@user).to be_valid
    end
    it 'should validate password' do
      @user.password = 'wimpy123'
      expect(@user).to be_valid
    end
  end
end
