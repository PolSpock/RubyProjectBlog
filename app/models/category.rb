class Category < ApplicationRecord
  has_many :post

  def self.listing
    Category.all
  end
end
