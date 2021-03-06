class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_admin, only: [:create, :edit, :destroy]

  def index
    if params[:q].nil?
      @articles = Article.all[0, 20].reverse
    else
      @articles = Article.search params[:q]
    end
  end

  def show
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def edit
    @comment = Comment.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    
    if @article.save
      flash[:success] = "Your article was created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def update
    @comment = @article.comments.build(params.require(:comment).permit(:id, :body)) 
    @comment.user_id = current_user.id

    if @article.update(article_params) && @comment.save 
      flash[:success] = "The article was updated."
      redirect_to article_path(@article)
    else
      flash[:error] = "Fill in the blank field"
      redirect_to :back
    end
  end

  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

private
  def article_params
    params.require(:article).permit(:client_name, :vdn, :question, :answer)
  end

  def set_article
    @article = Article.find (params[:id])
  end
end