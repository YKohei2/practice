class Tweet < ApplicationRecord
  belongs_to :user  #これを追加
  has_many :favorites
  has_many :comments
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
