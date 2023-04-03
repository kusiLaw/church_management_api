require 'rails_helper'

RSpec.describe User, type: :model do
   it "is valid with valid attributes"
   it "is not valid without a email"
   it "is not valid with an invalid email"
   it "is not valid without a password"
   it "is not valid with password less than 6"
   it "is not valid without a role"
end
