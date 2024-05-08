class CreateFriends < ActiveRecord::Migration[7.1]
  def change
    # This method creates a new database table named 'friends'
    create_table :friends do |t|
      # This adds string columns 'first', 'last', and 'phone' to the 'friends' table
      t.string :first
      t.string :last
      t.string :phone

      # These automatically add 'created_at' and 'updated_at' timestamp columns to the 'friends' table
      t.timestamps
    end
  end
end
