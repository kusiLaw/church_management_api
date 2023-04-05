require 'rails_helper'

RSpec.describe Due, type: :model do
 it 'is valid with valid attributes'
 it 'is not valid without a member reference'
 it 'is not valid without a group reference'
 it 'is not valid without date'
 it 'is not valid with invaid amount'
end
