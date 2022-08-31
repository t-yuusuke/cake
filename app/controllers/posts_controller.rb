class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    post = post.new(post_params)
    post.save
    redirect_to '/top'
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
