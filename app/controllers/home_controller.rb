class HomeController < ApplicationController
  def index
  	@articles = Article.active.order('title ASC').limit(10)
  end
end
