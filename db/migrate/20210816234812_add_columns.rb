class AddColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :description, :string
    add_column :groups, :name, :string
  end
end
