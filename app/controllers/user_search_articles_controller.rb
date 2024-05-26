class UserSearchArticlesController < ApplicationController
  def index
    @user_search_articles = UserSearchArticle.all
  end

  def new
    @user_search_article = UserSearchArticle.new
  end

  def create
    @user_ip = UserIp.find_by(ip: params[:user_search_article][:ip])
    @article = Article.find_by(name: params[:user_search_article][:name])
    @user_search_article = UserSearchArticle.new(user_ip: @user_ip, article: @article)
    respond_to do |format|
      if @article.save
        format.html { redirect_to articles_path, notice: 'Article create successfully' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
end
