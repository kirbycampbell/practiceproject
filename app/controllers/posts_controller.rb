class PostsController < ApplicationController
  def index
    p = Post.new
    p.title = "suckerFIsh"
    p.content = "your fucked brah"
    p.save
    @posts = Post.all
  end

  def new
    @post = Post.new(params)
  end

end
