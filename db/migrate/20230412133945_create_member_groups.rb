class CreateMemberGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :member_groups do |t|
      t.integer :group_number
      t.string :role
      t.references :member, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
