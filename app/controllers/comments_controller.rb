class CommentsController < ApplicationController
	def new
    @article = Article.new
  end
  def new
  	@article = Article.find(params[:article_id])
  	@comment = @article.comments.create!(params[:comment])
  	redirect_to @article, :notice => "Comment created!"
  end
  def show
  	@article = Article.find(params[:id])
  end
  def show_comments
    @article = Article.find(params[:id])
    @comments = @article.comments 
  end
   def display_articles
    @article = Article.find(params[:id])
    @comments = @article.comments 
  end
  def create_comment
    Comment.create $xvars["show_comments"]["article"]
  end  
end
