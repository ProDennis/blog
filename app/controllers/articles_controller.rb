class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit,:show,:destroy,:update]

  def index
  	@articles = Article.active.order('title DESC')
  end

  def new
  	@article = Article.new
  end

  def edit
  end

  def show
  end

  def update
    if @article.update_attributes(article_params)
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    if @article.update_attribute("is_deleted", true)
      flash[:notice]= "Article deleted"
    else
      flash[:notice]= "Ocurrió un error"
    end
    redirect_to articles_path
  end


  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end  
  end

  private

  def set_article
  	@article = Article.find(params[:id])
  end

  def article_params
  	params.require(:article).permit(:title, :body, :description)
  end

end