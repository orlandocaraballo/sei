class AuthorsController < ApplicationController
  # this displays already created authors
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  # this handles creation
  def new
    @author = Author.new
  end

  def create
    author = Author.new(author_params)

    if author.save
      flash[:info] = "Everything good"
      redirect_to author_path(author.id)
    else
      flash[:error] = "Everything bad"
      redirect_to new_author_path
    end
  end

  # this handles editing
  def edit
    @author = Author.find(params[:id])
    
    @books = Book.all
    @author_books = AuthorBook.where(author_id: @author.id).map do |author_book|
      author_book.book_id
    end
  end

  def update
    author = Author.find(params[:id])

    if author.update(author_params)
      flash[:info] = "Everything good"
      redirect_to edit_author_path(author.id)
    else
      flash[:error] = "Everything bad"
      redirect_to edit_author_path(author.id)
    end
  end

  # this handles deletion
  def destroy
    Author.destroy(params[:id])

    redirect_to authors_path
  end

  def add_book
    author_book = AuthorBook.new(
      author_id: params[:author_id],
      book_id: params[:book_id]
    )

    if author_book.save
      flash[:info] = "Everything good"
    else
      flash[:error] = "Everything bad"
    end

    redirect_to edit_author_path(params[:author_id])
  end

  def destroy_book
    author_book = AuthorBook.where(
      author_id: params[:author_id],
      book_id: params[:book_id]
    ).first

    author_book.destroy

    redirect_to edit_author_path(params[:author_id])
  end

  private

  def author_params
    params.require(:author).permit(:name)
  end
end
