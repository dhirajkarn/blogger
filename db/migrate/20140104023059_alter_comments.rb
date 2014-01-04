class AlterComments < ActiveRecord::Migration
  def up
  	add_column("comments", "email", :string, :limit => 100)
  end

  def down
  	remove_column("comments", "email")
  end
end
