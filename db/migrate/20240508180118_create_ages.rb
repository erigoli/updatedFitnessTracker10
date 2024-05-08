class CreateAges < ActiveRecord::Migration[7.1]
  def change
    # This method creates a new database table named 'ages'
    create_table :ages do |t|
      # This adds an integer column 'value' to the 'ages' table
      t.integer :value
      # This adds a reference column 'user_id' to associate each age entry with a user
      t.references :user, null: false, foreign_key: true

      # These automatically add 'created_at' and 'updated_at' timestamp columns to the 'ages' table
      t.timestamps
    end
  end
end
