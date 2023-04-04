require 'rails_helper'

RSpec.describe User, type: :model do
  # it "is valid with valid attributes" do
  #   user  = User.new( member: 1, role: 'admin', password: 'ssss')
  #   expect(user).to be_valid
  # end
  it 'is valid with valid attributes'
  it 'is not valid without a email'
  it 'is not valid with an invalid email'
  it 'is not valid without a password'
  it 'is not valid with password less than 6'
  it 'is not valid without a role'
end
