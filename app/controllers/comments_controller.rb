class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to @post, notice: "Comment added."
    else
      render "posts/show", status: :unprocessable_entity
    end
  end

  def destroy
    @comment = @post.comments.find(params.expect(:id))
    @comment.destroy!
    redirect_to @post, notice: "Comment removed.", status: :see_other
  end

  private

  def set_post
    @post = Post.find(params.expect(:post_id))
  end

  def comment_params
    params.expect(comment: [ :body, :author_name ])
  end
end
