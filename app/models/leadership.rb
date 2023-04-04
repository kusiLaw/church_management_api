class Leadership < ApplicationRecord
  belongs_to :member
  belongs_to :departmental_head

  validates :start_date, comparison: { greater_than: :end_date }
  validates :end_date, comparison: { less_than: :start_date }
end
