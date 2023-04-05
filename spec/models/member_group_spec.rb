require 'rails_helper'

RSpec.describe MemberGroup, type: :model do
 it 'is valid with valid attributes'
 it 'is not valid without a role'
 it 'is not valid without a member reference'
 it 'is not valid without a group reference'
end
