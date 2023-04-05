class CreateOccupationCats < ActiveRecord::Migration[7.0]
  def change
    create_table :occupation_cats do |t|
      t.string :name

      t.timestamps
    end
  end
end
