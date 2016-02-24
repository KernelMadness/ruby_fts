class HomeController < ApplicationController
  def index
  end

  def search
    @articles = Article.search(params.fetch(:query, nil))
    render :index
  end
end
