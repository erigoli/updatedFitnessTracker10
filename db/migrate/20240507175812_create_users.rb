class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    # This method creates a new database table named 'users'
    create_table :users do |t|
      # This adds a string column 'username' to the 'users' table
      t.string :username
      # This adds a string column 'password_digest' to the 'users' table
      t.string :password_digest

      # These automatically add 'created_at' and 'updated_at' timestamp columns to the 'users' table
      t.timestamps
    end
  end
end
