require 'rails_helper'

RSpec.describe Address, type: :model do
 it 'is valid with valid attributes'
 it 'is not valid without a member reference'
 it 'is not valid without a locality'
 it 'is valid without a digital_code'
end
