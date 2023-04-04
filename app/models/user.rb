class User < ApplicationRecord
  belongs_to :member

  validates :email, presence: true, uniqueness: true, length: { in: 2..45 }
  validates :username, presence: true, uniqueness: true, length: { in: 2..45 }
  validates :password, presence: true, length: { in: 6..45 }
  validates :role, presence: true

end
