require 'rails_helper'

RSpec.describe Tithe, type: :model do
 it 'is valid with valid attributes'
 it 'is not valid without a amount'
 it 'is not valid with invalid a amount'
 it 'is not valid without a date'
 it 'is not valid without a member reference'
end
