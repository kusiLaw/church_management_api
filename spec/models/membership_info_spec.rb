require 'rails_helper'

RSpec.describe MembershipInfo, type: :model do
 it 'is valid with valid attributes'
 it 'is not valid without a member reference'
 it 'is not valid without a info_type'
 it 'is not valid without a message'
end
