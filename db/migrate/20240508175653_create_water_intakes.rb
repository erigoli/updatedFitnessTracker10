class CreateWaterIntakes < ActiveRecord::Migration[7.1]
  def change
    # This method creates a new database table named 'water_intakes'
    create_table :water_intakes do |t|
      # This adds a decimal column 'gallons' to the 'water_intakes' table
      t.decimal :gallons
      # This adds a foreign key 'user_id' referencing the 'users' table, ensuring it's not null
      t.references :user, null: false, foreign_key: true

      # These automatically add 'created_at' and 'updated_at' timestamp columns to the 'water_intakes' table
      t.timestamps
    end
  end
end
