require 'rails_helper'

RSpec.describe Member, type: :model do
  subject do
    Member.new(lname: 'Lawrence',
               fname: 'Addai Kusi',
               membership: 'member',
               phone: '+233243000000',
               image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fprofile_3135715&psig=AOvVaw30pcvl9zyOMGtYqZqMQBQv&ust=1681210029676000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKCyyejHkv4CFQAAAAAdAAAAABAE')
  end

  # before { subject.save }

  it 'shold be valid with expected attributes' do
    expect(subject).to be_valid
  end

  it 'should not be valid without a membership' do
    subject.membership = nil
    expect(subject).to_not be_valid
  end

  it 'should not be valid with word not in membership list' do
    subject.membership = 'n/a'
    expect(subject).to eql('true is not a valid. A person can be a member, member_vistor, visitor')
  end

  it 'First name should not be valid with name more than 45 string character' do
    subject.fname = 'n' * 46
    expect(subject).to_not be_valid
  end

  it 'Last name should not be valid with name more than 45 string character' do
    subject.lname = 'n' * 46
    expect(subject).to_not be_valid
  end
end
