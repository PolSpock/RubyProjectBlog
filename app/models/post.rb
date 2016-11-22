class Post < ApplicationRecord
  belongs_to :category

  def self.listing
    Post.all
  end

  def self.search(params)
    if params[:category_id]
      @posts = Post.where(["category_id = ?", params[:category_id]])
    end
  end
end
