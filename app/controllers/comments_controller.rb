class CommentsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_book, only: [:create]

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    
    respond_to do |format|
      format.json {
        if @comment.save
          # format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
          render action: 'show', status: :created, location: @comment
        else
          render json: @comment.errors, status: :unprocessable_entity
        end
      }
    end
  end

  private    
    def set_book
      @book = Book.find(params[:comment][:book_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :book_id).merge(admin_id: current_admin.id)
    end
end
