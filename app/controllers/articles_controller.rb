require 'pry'
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # @article = Article.new
    # @article.title = params[:title]
    # @article.description = params[:description]
    # @article.save
    article = Article.create(article_params)
    redirect_to article
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    # binding.pry
    Article.update(params[:id], article_params)
    redirect_to articles_path
  end

  private 

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
