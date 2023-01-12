class Follow < ApplicationRecord
  before_create :auto_accept
  belongs_to :followed, class_name: "User", foreign_key: "followed_id"
  belongs_to :follower, class_name: "User", foreign_key: "follower_id"

  def accept
    self.update(accepted: true)
  end

  private
  def auto_accept
    self.accepted = true unless self.followed.private
  end
end