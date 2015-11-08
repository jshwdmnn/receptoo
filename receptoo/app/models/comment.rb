class Comment < ActiveRecord::Base

	belongs_to :recipe
  attr_accessor :user, :comment_text
end
