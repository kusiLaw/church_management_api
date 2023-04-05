class CreateCares < ActiveRecord::Migration[7.0]
  def change
    create_table :cares do |t|
      t.string :mode_of_contact
      t.string :message
      t.date :date
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
