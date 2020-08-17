class CategoriesController < ApplicationController
  def index
    @categories = Category.all.includes(:articles)
    @best_voted_article = Article.best_voted_article
  end

  def show
    @category = Category.includes(:articles).find_by(id: params[:id])
    @category_articles = @category.articles.reverse
  end

  def new
    @category = Category.new
  end
end
