class ArticlesController < ApplicationController
  def index

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