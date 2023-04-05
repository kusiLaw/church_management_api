require 'rails_helper'

RSpec.describe Care, type: :model do
 it 'is valid with valid attributes'
 it 'is not valid without a member reference'
 it 'is not valid with message more than 254 characters'

end
