class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.integer :status, default: 0, null: false  # Add status column with default (active)
      t.datetime :registration_time
      t.datetime :last_login_time

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
