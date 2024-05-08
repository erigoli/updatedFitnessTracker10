class CreateWeightlosses < ActiveRecord::Migration[7.1]
  def change
    # This method creates a new database table named 'weightlosses'
    create_table :weightlosses do |t|
      # This adds an integer column 'value' to the 'weightlosses' table
      t.integer :value
      # This adds a reference column 'user_id' to associate each weight loss entry with a user
      t.references :user, null: false, foreign_key: true

      # These automatically add 'created_at' and 'updated_at' timestamp columns to the 'weightlosses' table
      t.timestamps
    end
  end
end
