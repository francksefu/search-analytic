class UserIp < ApplicationRecord
  has_many :user_search_articles
  has_many :articles, through: :user_search_articles

  validates :ip, presence: true
end
