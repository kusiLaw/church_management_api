class Department < ApplicationRecord
  has_many :departmental_heads

  validates :name, presence: true, uniqueness: true, length: { in: 2..45 }
end
