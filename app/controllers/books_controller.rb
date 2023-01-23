class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
  end

  def create
    @Book = Book.new(Book_params)
    if @Book.save
      redirect_to Book_path(@Book.id)
    else
      render :new
    end

  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
