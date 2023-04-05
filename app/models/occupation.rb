class Occupation < ApplicationRecord
  belongs_to :member
  belongs_to :Occupation_category
end
