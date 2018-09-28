class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(params)
  end

  def show
    @post = Post.find(params[:id])
  end

end
