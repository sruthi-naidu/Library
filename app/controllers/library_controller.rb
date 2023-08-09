class LibraryController < ApplicationController
	def index
	    library = Library.all
	    render json: library
  	end
end
