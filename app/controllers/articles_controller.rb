class ArticlesController < ApplicationController

  def show
    @article = Article.includes(:creator).find(params[:id])
    @vote = current_user.votes.find_by(article_id: @article.id) if current_user
  end

  def new
    if current_user
      @article = Article.new
    else
      redirect_to signin_path
    end
  end

  def create
    @article = Article.new(article_params)
    @article.creator = current_user
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
