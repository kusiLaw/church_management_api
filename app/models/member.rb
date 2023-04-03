class Member < ApplicationRecord
  enum :status, { draft: 0, published: 1, archived: 2, trashed: 3 }

  validates :fname, presence: true, length: { in: 2..45 }
  validates :lname, presence: true, length: { in: 2..45 }
  validates :membership, presence: true, length: { in: 6..14 },
                         inclusion: { in: %w[member member_vistor visitor],
                                      message: '%<value> is not a valid. A person can be a member, member_vistor, visitor' }
  validates :phone, presence: true, length: { in: 4..15 }
  validates :image, presence: true, length: { in: 0..255 }
end
