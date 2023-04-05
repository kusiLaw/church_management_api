class CreateDues < ActiveRecord::Migration[7.0]
  def change
    create_table :dues do |t|
      t.decimal :amount
      t.string :reference
      t.date :date
      t.references :member, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
