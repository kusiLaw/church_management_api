class CreateLeaderships < ActiveRecord::Migration[7.0]
  def change
    create_table :leaderships do |t|
      t.references :member, null: false, foreign_key: true
      t.references :departmental_head, null: false, foreign_key: true

      t.date  :start_date
      t.date  :end_date
    end
  end
end
