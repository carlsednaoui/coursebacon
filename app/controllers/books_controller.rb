class BooksController < ApplicationController

	before_filter :require_current_user, :except => [:index, :show]
	before_filter :require_book_belongs_to_current_user, :only => [:edit, :update, :destroy]

	helper_method :sort_column, :sort_direction

	# GET /books
	# GET /books.json
	def index
		@books = Book.order(sort_column + " " + sort_direction).page(params[:page]).per(10)

		respond_to do |format|
		  format.js
			format.html # index.html.erb
			format.json { render :json => @books }
		end
	end

	# GET /books/1
	# GET /books/1.json
	def show
		@book = Book.find(params[:id])
		@book_reviews = BookReview.find_all_by_book_id(@book.id).reverse

		#@tweets = Tweet.find_all_by_book_id(@book.id)

		@tweets = Tweet.where("tweets.updated_at <= (SELECT MIN(t.updated_at) FROM tweets AS t WHERE t.from_user=tweets.from_user)").order("tweets.tweet_id desc").find_all_by_book_id(@book.id).first(108)

		respond_to do |format|
			format.html # show.html.erb
			format.json { render :json => @book }
		end
	end

	# GET /books/new
	# GET /books/new.json
	def new
		@book = Book.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @book }
		end
	end

	# GET /books/1/edit
	def edit
		@book = Book.find(params[:id])
	end

	# POST /books
	# POST /books.json
	def create
		@book = Book.new(params[:book])
		@book.user = current_user

		respond_to do |format|
			if @book.save
				format.html { redirect_to @book, :notice => 'Book was successfully created.' }
				format.json { render :json => @book, :status => :created, :location => @book }
			else
				format.html { render :action => "new" }
				format.json { render :json => @book.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /books/1
	# PUT /books/1.json
	def update
		@book = Book.find(params[:id])

		respond_to do |format|
			if @book.update_attributes(params[:book])
				format.html { redirect_to @book, :notice => 'Book was successfully updated.' }
				format.json { head :ok }
			else
				format.html { render :action => "edit" }
				format.json { render :json => @book.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /books/1
	# DELETE /books/1.json
	def destroy
		@book = Book.find(params[:id])
		@book.destroy

		respond_to do |format|
			format.html { redirect_to books_url }
			format.json { head :ok }
		end
	end

	private

	def require_book_belongs_to_current_user
		@book = current_user.books.find(params[:id])
	end

	def sort_column
		Book.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
	end

	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
	end
end
