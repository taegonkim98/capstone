class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :subject
      t.integer :max_students
      t.string :zipcode
      t.integer :user_id

      t.timestamps
    end
  end
end
