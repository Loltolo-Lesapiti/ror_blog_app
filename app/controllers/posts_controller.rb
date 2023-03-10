# Posts controller class extends application controller
class PostsController < ApplicationController
  def index
    @user = User.find(params[:author_id])
    @posts = @user.posts.includes(:comments)
  end

  def show
    @user = User.find(params[:author_id])
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
end
