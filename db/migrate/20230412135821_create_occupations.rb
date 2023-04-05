class CreateOccupations < ActiveRecord::Migration[7.0]
  def change
    create_table :occupations do |t|
      t.string :job_title
      t.references :member, null: false, foreign_key: true
      t.references :Occupation_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
