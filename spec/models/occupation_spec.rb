require 'rails_helper'

RSpec.describe Occupation, type: :model do
 it 'is valid with valid attributes'
 it 'is not valid without a name'
 it 'is not valid with a duplicate name'
end
