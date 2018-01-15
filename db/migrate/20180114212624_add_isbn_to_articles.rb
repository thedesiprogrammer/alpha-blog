class AddIsbnToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :isbn, :string
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
