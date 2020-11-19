class CommentsController  < ApplicationController
  def index
    @book = Book.find(params[:book_id])
    @comments = @book.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.build(clean_comment)
    if @comment.save
      redirect_to books_path
    else
      render :new
    end
  end

  private 
  def clean_comment
    params.require(:comment).permit(:birthday , :gender , :content)
  end
end