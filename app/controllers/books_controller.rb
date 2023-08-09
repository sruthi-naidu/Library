class BooksController < ApplicationController
	def index
		library = Library.find(params[:library_id])
		books = library.books.select(:id, :title, :author, :status, :user_id)
		render json: books, methods: :availability
	end
end
