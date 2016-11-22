class CategoriesController < ApplicationController
  def index

  end

  def create
    @category = Category.new(listing_params)

    if @category.save
      redirect_to root_path, notice: 'Category was successfully created.'
    else
      render:new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:category).permit(:name)
    end
end
