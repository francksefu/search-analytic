class UserSearchArticle < ApplicationRecord
  belongs_to :user_ip
  belongs_to :article

end
