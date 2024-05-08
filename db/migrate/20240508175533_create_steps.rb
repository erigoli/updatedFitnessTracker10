class CreateSteps < ActiveRecord::Migration[7.1]
  def change
    # This method creates a new database table named 'steps'
    create_table :steps do |t|
      # This adds an integer column 'value' to the 'steps' table
      t.integer :value
      # This adds a foreign key 'user_id' referencing the 'users' table, ensuring it's not null
      t.references :user, null: false, foreign_key: true

      # These automatically add 'created_at' and 'updated_at' timestamp columns to the 'steps' table
      t.timestamps
    end
  end
end
