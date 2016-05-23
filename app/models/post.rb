class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  def prev
    Post.where("id > ?", id).limit(1).first
  end

  def next
    Post.where("id < ?", id).limit(1).first
  end

end


