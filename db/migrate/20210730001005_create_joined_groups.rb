class CreateJoinedGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :joined_groups do |t|
      t.string :status
      t.integer :user_id
      t.interger :group_id

      t.timestamps
    end
  end
end
