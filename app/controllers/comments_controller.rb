class CommentsController < ApplicationController
  respond_to :html, :js

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comments_params)
    @comment.user_id = current_user.id
    flash[:notice] = "Comment successfully added!"
    if !@comment.save
      render :new
    end
  end


  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:post_id])
    @comment= Comment.find(params[:id])
    if @comment.update(comments_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end


  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment successfully deleted."
    redirect_to post_path(@post)
  end

  private
  def comments_params
    params.require(:comment).permit(:body, :user_id, :post_id)
  end

end
