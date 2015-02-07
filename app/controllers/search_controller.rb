class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @articles = Article.all[0, 10]
    else
      @articles = Article.search params[:q]
    end
  end
end