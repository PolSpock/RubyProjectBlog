class PostsController < ApplicationController
  def index
    @posts = Post.search(params)
  end

  def create
    @post = Post.new(listing_params)

    if @post.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      render:new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:post).permit(:title, :author, :content, :category_id)
    end
end
