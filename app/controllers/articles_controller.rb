class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :update, :edit]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(title: params[:title], 
                              description: params[:description])
   
    redirect_to article_path(@article)
  end

  def edit
  end
   
  def update
    @article.update(article_params)
    redirect_to @article
    
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
