class CreateJoinedGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :joined_groups do |t|
      t.string :status
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
