class Article < ApplicationRecord
  has_many :user_search_articles
  has_many :user_ips, through: :user_search_articles

  validates :name, presence: true

  def update_number_of_search
    update(number_of_search: number_of_search + 1)
  end
end
