class CreateBios < ActiveRecord::Migration[7.0]
  def change
    create_table :bios do |t|
      t.text :message
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
