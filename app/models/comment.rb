class Comment < ActiveRecord::Base
  attr_accessible :blog_id, :name, :email, :comment_text

  belongs_to :blog

  
end
