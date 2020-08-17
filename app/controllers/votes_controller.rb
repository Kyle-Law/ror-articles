class VotesController < ApplicationController
  before_action :require_signin

  def create
    @article = Article.find(params[:article_id])
    @article.votes.create!(user: current_user)

    redirect_to @article
  end

  def destroy
    vote = current_user.votes.find(params[:id])
    vote.destroy

    article = Article.find(params[:article_id])
    redirect_to article
  end

  private

  def vote_params
    params.require(:vote).permit(:article_id)
  end
end
