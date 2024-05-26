class Article < ApplicationRecord
  has_many :user_search_articles
  has_many :user_ips, through: :user_search_articles

  validates :name, presence: true
end
