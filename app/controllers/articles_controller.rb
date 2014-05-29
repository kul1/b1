class ArticlesController < ApplicationController	
  def create_article
    Article.create $xvars["enter"]["article"]
  end  	
  def display_articles
    	@articles = Article.all
  end
  def rm
    	@article = Article.find params[:id]
    	@article.destroy
    	redirect_to env["HTTP_REFERER"]
  end
  def show_article
    	@article = Article.find params[:id]
  end
  #def new
  #  @article = Article.new
  #end
    def show_comments
    @article = Article.find(params[:id])
    @comments = @article.comments 
  end
  def create_comments
    @article = Article.find_by :id=> $xvars["display_articles"]["id"]
    @comment = @article.comments :cm_id => $xvars["display_articles"]["id"]
    
  end
  def create_activity
    Act.create $xvars["enter"]["act"]
  end
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create!(params[:comment])
    redirect_to @article, :notice => "Comment created!"
  end
end

