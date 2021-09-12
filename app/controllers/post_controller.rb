class PostController < ApplicationController
  def index
      @posts = Post.all
  end

  def show

  end

   # POST /communities or /communities.json
  def create
    @post = Post.new(post_values)
    @post.user_id = current_user.id
      if @post.save
       redirect_to posts_path
      else
      render :new
      end
  end

  def destroy
  end
end
