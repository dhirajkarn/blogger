class Blog < ActiveRecord::Base
  attr_accessible :user_id, :blog_title, :blog_post

  belongs_to :user

  has_many :comments, dependent: :destroy

  validates :blog_title, :presence => true
  validates :blog_post, :presence => true

  # validates_presence_of :user
  # validates_associated :user

  def self.get_months
  	# months = Blog.select("DISTINCT DATE_FORMAT(created_at, '%M %Y') AS month").map(&:month)
    # blogs = Blog.find(:all, :order => 'created_at')
    # months = blogs.group_by { |b| b.created_at.beginning_of_month }

    months = Blog.order("created_at DESC").map { |d| d.created_at.strftime('%B %Y') }.uniq
  end
end
