class Blog < ActiveRecord::Base
  attr_accessible :user_id, :blog_title, :blog_post

  belongs_to :user

  has_many :comments
end
