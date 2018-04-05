require 'rails_helper'

RSpec.describe User, type: :model do 
  describe 'password encryption' do 

    it 'does not save passwords to the database' do 
      User.create!({
        username: 'truong',
        password: 'nothinghere'
      })
      user = User.find_by_username('truong')
      expect(user.password).not_to be('nothinghere')
    end 

    # add more tests here

  end
end 


