class CreateCalories < ActiveRecord::Migration[7.1]
  def change
    # This method creates a new database table named 'calories'
    create_table :calories do |t|
      # This adds an integer column 'amount' to the 'calories' table
      t.integer :amount
      # This adds a foreign key 'user_id' referencing the 'users' table, ensuring it's not null
      t.references :user, null: false, foreign_key: true

      # These automatically add 'created_at' and 'updated_at' timestamp columns to the 'calories' table
      t.timestamps
    end
  end
end
