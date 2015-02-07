class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :udpate]

  def index
    if params[:q].nil?
      @articles = Article.all[0, 10]
    else
      @articles = Article.search params[:q]
    end
  end

  def show
    @article = Article.find (params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "Your article was created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end
end

private
  def article_params
    params.require(:article).permit(:client_name, :vdn, :question, :answer)
  end

  def set_article
    @article = Article.find_by (params[:q])
  end