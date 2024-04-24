class AddNameToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :null, :string
    add_column :users, :false, :string
  end
end
