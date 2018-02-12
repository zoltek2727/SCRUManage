class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @comment = Comment.new
    @comments = Comment.all
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to '/pages/main'
    else
      render "new"
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to '/pages/main'
       flash[:success] = "Edytowano pomyślnie."
    else
      render 'edit'
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash[:success] = "Komentarz usunięty"
    redirect_to '/pages/main'
  end

  private

  private

  def comment_params
    params.require(:comment).permit(:content, :addDate, :user_id, :project_id)
  end
end