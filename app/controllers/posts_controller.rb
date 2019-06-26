class PostsController < ApplicationController
  layout 'iteratethroughposts', only: [:index]

  def new
    @post = Post.new
    @user_id = session[:user_id]
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @user = User.find(session[:user_id])
    @posts = Post.order(created_at: :desc)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)
    redirect_to posts_url
  end

  private
  def post_params
    params.require(:post).permit(:message, :user_id)
  end
end
