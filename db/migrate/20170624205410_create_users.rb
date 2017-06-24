class CreateUsers < ActiveRecord::Migration[5.1]

  def up
    create_table :users do |t|
      #column defintions here
      t.column "first_name", :string, :limit => 25  #explicit
      t.string "last_name",  :limit => 50   #shortcut
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

      #rails automatically creates an column for id

      t.timestamps
      #t.timestamps is the same as:
      #t.datetime "created_at"
      #t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end
end
