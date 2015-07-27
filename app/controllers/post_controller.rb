class PostController < ApplicationController

  def index
    @posts = Post.all
    @frontpost = @posts.sort_by { |post| posts.created_at  }
    @firstpost = @frontpost.first
  end

  def show
    @showpost = Post.find(params[:id].to_i)
  end

  
end
