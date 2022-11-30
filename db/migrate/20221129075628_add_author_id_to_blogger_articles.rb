class AddAuthorIdToBloggerArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :blogger_articles, :author_id, :integer
  end
end
