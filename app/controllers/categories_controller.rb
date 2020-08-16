class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @best_voted_article = Article.best_voted_article
  end

  def show
    @category = Category.find_by(id: params[:id])
    @category_articles = @category.articles
  end

  # def create
  #   param = params.fetch(:category, {})
  #   @category = Category.new(param)
  #   @category.save
  # end

  def new
    @category = Category.new
  end
end
