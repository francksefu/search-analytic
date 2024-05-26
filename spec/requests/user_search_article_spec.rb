require 'rails_helper'

describe ' Controller / user_search_article' do
  let!(:article) do
    Article.create(name: 'The word help')
  end

  let!(:user_ip) do
    UserIp.create(ip: '196.12.3.4')
  end

  let!(:user_search_article) do
    UserSearchArticle.create(user_ip:, article:)
  end

  it 'get index for expend' do
    get '/user_search_articles/new'
    expect(response.status).to eq(200)
    expect(response.body).not_to eq nil
  end
end
