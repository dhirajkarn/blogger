class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer "blog_id"
      t.string "name", :limit => 25
      t.text "comment_text"
      t.timestamps
    end
    add_index("comments", "blog_id")
  end
end
