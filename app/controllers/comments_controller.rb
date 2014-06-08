class CommentsController < ApplicationController
	
  #def new
   # @article = Article.new
  #end

  def create
    debugger
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create!(params[:comment])
    #redirect_to @article, :notice => "Comment created!"
  end

  def new_comment
    @article = Article.find($xvars["p"]["id"])
    @comment = @article.comments.create!($xvars["show_comments_create"]["comment"])
  end

  def debugger
    debugger $xvars
  end
  def show
  	@article = Article.find(params[:id])
    @comments = @article.comments 
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
