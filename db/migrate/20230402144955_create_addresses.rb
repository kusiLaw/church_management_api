class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :locality
      t.string :digital_code
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
