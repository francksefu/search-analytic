class UserSearchArticlesController < ApplicationController
  def index
    @articles = Article.all.order(number_of_search: :desc)
    @user_search_articles = UserSearchArticle.all
  end

  def new
    @articles = Article.all.order(number_of_search: :desc)
    @user_search_article = UserSearchArticle.new
  end

  def create
    unless  UserIp.find_by(ip: params[:user_search_article][:ip])
      @user_ip = UserIp.create(ip: params[:user_search_article][:ip])
    else
      @user_ip = UserIp.find_by(ip: params[:user_search_article][:ip])
    end

    

    unless Article.find_by(name: params[:user_search_article][:name])
      @article = Article.create(name: params[:user_search_article][:name])
      @article.update_number_of_search
    else
      @article = Article.find_by(name: params[:user_search_article][:name])
      @article.update_number_of_search
    end
    
    @user_search_article = UserSearchArticle.new(user_ip: @user_ip, article: @article)
    respond_to do |format|
      if @user_search_article.save
        format.html { redirect_to new_user_search_article_path, notice: 'Article create successfully' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
end
