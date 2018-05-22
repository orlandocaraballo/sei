class BooksController < ApplicationController
  # this displays already created authors
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  # this handles creation
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)

    if book.save
      flash[:info] = "Everything good"
      redirect_to book_path(book.id)
    else
      flash[:error] = "Everything bad"
      redirect_to new_author_path
    end
  end

  # this handles editing
  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])

    if book.update(book_params)
      flash[:info] = "Everything good"
      redirect_to edit_book_path(book.id)
    else
      flash[:error] = "Everything bad"
      redirect_to edit_book_path(book.id)
    end
  end

  # this handles deletion
  def destroy
    Book.destroy(params[:id])

    redirect_to authors_path
  end

  private

  def book_params
    params.require(:book).permit(:name)
  end
end
