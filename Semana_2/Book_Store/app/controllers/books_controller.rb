class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def show
		begin
			@book = Book.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			render 'no_books_found'
		end
	end

	def new
		@book = Book.new
	end

	def edit
		@book = Book.find(params[:id])
	end

	def create
		@book = Book.new(book_params)
		
		if @book.save
			flash[:notice] = 'Book created successfully'
			redirect_to book_path(@book)
		else
			flash[:alert] = 'Repeat please'
			render 'new'
		end
	end

	def update
		@book = Book.find(params[:id])
		@book.rating = @book.update_rating
		@book.update(book_params)
		redirect_to book_path(@book)
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy

		redirect_to root_path
	end

	private
	def book_params
		params.require(:book).permit(:name, :price, :description)
	end
end
