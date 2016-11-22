class AdminsController < ApplicationController
  def index
    @post = Post.new

    @category = Category.new
  end
end
