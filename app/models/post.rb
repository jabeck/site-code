class Post < ActiveRecord::Base
  belongs_to :section
  has_many :temp_posts
  validates_presence_of :title, :body
end
