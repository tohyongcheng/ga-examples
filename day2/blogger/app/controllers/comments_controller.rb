class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    # @comment = Comment.new(comment_params)
    # @comment.post_id = @post.id

    @comment = @post.comments.build(comment_params)

    if !@comment.save
      flash[:error] = "Comment failed to save."
    end

    redirect_to post_path(:id => @post.id)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post

    if !@comment.destroy
      flash[:error] = "Comment failed to delete."
    end

    redirect_to post_path(:id => @post.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:body) # returns { :body => "something" }
  end

end
