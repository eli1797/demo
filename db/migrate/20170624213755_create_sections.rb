class CreateSections < ActiveRecord::Migration[5.1]
  def up
    create_table :sections do |t|
      t.integer "page_id"  #foreign key
      t.string "name"
      t.integer "position"
      t.boolean "visible"
      t.string "content_type"
      t.text "content"
      t.timestamps
    end
    add_index("sections", "page_id")
  end

  def down
    drop_table :sections
  end
end