class UserSearchArticle < ApplicationRecord
  belongs_to :user_ip
  belongs_to :article

  before_save :update_number_of_search

  def update_number_of_search()
    old_number_of_search = self.article.number_of_search
    article.update(number_of_search: old_number_of_search + 1)
  end
end
