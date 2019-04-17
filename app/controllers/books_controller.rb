class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:title]
    @book.author = params[:author]
    @book.publisher = params[:publisher]
    @book.genre = params[:genre]
    @book.description = params[:description]
    @book.save
    redirect_to root_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.title = params[:title]
    @book.author = params[:author]
    @book.publisher = params[:publisher]
    @book.genre = params[:genre]
    @book.description = params[:description]
    @book.save
    redirect_to root_path
  end

  def delete
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path
  end

end
