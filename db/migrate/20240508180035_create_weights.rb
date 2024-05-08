class CreateWeights < ActiveRecord::Migration[7.1]
  def change
    # This method creates a new database table named 'weights'
    create_table :weights do |t|
      # This adds an integer column 'value' to the 'weights' table
      t.integer :value
      # This adds a reference column 'user_id' to associate each weight entry with a user
      t.references :user, null: false, foreign_key: true

      # These automatically add 'created_at' and 'updated_at' timestamp columns to the 'weights' table
      t.timestamps
    end
  end
end
