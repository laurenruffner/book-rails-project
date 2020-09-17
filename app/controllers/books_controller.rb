class BooksController < ApplicationController

  def index
    @books = Book.all.each
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def delete
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book created successfully"
      redirect_to(books_path)  
    else
      render('new')
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:notice] = "Book updated successfully"
      redirect_to(books_path)
    else
      render('edit')
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book '#{@book.title}' destroyed successfully"
    redirect_to(books_path)
  end 
    
  def book_params
    params.require(:book).permit(:title, :author,:genre, :price, :published_date)
  end
end
