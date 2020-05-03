class PostsController < ApplicationController
  before_action :post_id, only: [:show, :destroy,:update]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title,:body)
  end

  def post_id
    @post = Post.find(params[:id])
  end
end
