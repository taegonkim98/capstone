class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :text, :string
  end
end
