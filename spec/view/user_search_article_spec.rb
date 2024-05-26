require 'rails_helper'

RSpec.describe 'UserSearchArticles/views', type: :feature do
  let!(:article) do
    Article.create(name: 'The word help')
  end

  let!(:user_ip) do
    UserIp.create(ip: '196.12.3.4')
  end

  let!(:user_search_article) do
    UserSearchArticle.create(user_ip:, article:)
  end

  scenario 'check the page of new user_search_article' do
    visit new_user_search_article_path
    expect(page).to have_content(article.name)
  end
end
