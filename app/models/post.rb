class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  def next
    self.class.unscoped.where("created_at <= ? AND id != ?", created_at, id).order("created_at DESC").first
  end

  def previous
    self.class.unscoped.where("created_at >= ? AND id != ?", created_at, id).order("created_at ASC").first
  end

end


