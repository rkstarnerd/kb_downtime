class CommentsController < ApplicationController
  before_action :require_user
  before_action :require_admin

  def create
    @article = Article.find_by(params[:article_id])
    @comment = @article.comments.build(params.require(:comment).permit(:body))
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice] = "Your comment was added."
      redirect_to article_path(@article)
    else
      flash[:error] = "An empty comment is not allowed."
      redirect_to :back
    end
  end
end