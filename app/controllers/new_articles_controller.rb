class NewArticlesController < ApplicationController
	def new_display_articles
    	@articles = Article.all
  end

  def new_show_articles
      @articles = Article.all
  end
  def new_show_comments
    	@articles = Article.all
  end

  def new_create_comment
    @articles = Article.all 
    @article.id = $xvars["p"]["id"]
    @article = Article.find_by :id=> $xvars["new_display_articles"]["id"]
    @comment = @article.comments :cm_id => $xvars["display_articles"]["id"]
  end
end
