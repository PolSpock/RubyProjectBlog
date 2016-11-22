class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.timestamps
      t.string :author
      t.string :title
      t.string :content
      t.integer :category_id
    end

    create_table :categories do |t|
      t.timestamps
      t.string :name
    end
  end
end
