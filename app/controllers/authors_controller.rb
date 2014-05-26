class AuthorsController < ApplicationController
    def create_author
    	Author.create $xvars["enter_author"]["author"]
  	end
  	def display_authors
    	@authors = Author.all
  	end
  	 def rm
    	@author = Author.find params[:id]
    	@author.destroy
    	redirect_to env["HTTP_REFERER"]
  	end
  	def show_author
    	@author = Author.find params[:id]
  	end
end
