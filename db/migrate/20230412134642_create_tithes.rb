class CreateTithes < ActiveRecord::Migration[7.0]
  def change
    create_table :tithes do |t|
      t.decimal :amount
      t.string :payment_mode
      t.string :reference
      t.date :date
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
