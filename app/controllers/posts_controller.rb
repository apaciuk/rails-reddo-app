class PostsController < ApplicationController
  # GET /post or /post.json
  def index
    @posts = Post.all

  end

  # GET /post/1 or /post/1.json
  def show
  end

  # GET /post/new
  def new
    @community = Community.find(params[:community_id])
    @post = Post.new
  end
  # POST /post or /post.json
  def create
    @post = Post.new(post_values)
    @post.user_id = current_user.id
      if @post.save
       redirect_to community_path(@post.community_id)
      else
      render :new
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Community.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_values
      params.require(:community).permit(:title, :body )
    end
end
