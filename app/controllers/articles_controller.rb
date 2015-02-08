class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update]
  before_action :require_user, except: [:index, :show]

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

  def edit
    
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

  def update
    if @article.update(article_params)
      flash[:notice] = "The article was updated."
      redirect_to article_path(@article)
    else
      render 'edit'
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