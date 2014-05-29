class NewArticlesController < ApplicationController
	def new_display_articles
    	@articles = Article.all
  end

  def new_show_comments
    	@articles = Article.all
  end
end
