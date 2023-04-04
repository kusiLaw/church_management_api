class CreateMembershipInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :membership_infos do |t|
      t.string :info_type
      t.text :message
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
