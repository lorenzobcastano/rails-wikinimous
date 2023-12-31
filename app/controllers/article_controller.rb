class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.save

  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
