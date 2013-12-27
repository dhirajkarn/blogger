class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer "user_id"
      t.string "blog_title"
      t.text "blog_post"
      t.timestamps
    end
    add_index("blogs", "user_id")
  end
end
