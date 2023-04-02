class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :fname
      t.string :lname
      t.string :membership
      t.string :phone
      t.string :image
      t.string :phone

      t.timestamps
    end
  end
end
