class CreateDepartmentalHeads < ActiveRecord::Migration[7.0]
  def change
    create_table :departmental_heads do |t|
      t.string :name
      t.references :department, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
