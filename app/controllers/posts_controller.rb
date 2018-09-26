class PostsController < ApplicationController
  def index
    u = User.create(:username => "kingfuckbutt")
    p = Post.new
    p.title = "suckerFIsh"
    p.content = "your fucked brah"
    p.user_id = 1
    p.save
    @posts = Post.all
  end

  def new
    @post = Post.new(params)
  end

end
