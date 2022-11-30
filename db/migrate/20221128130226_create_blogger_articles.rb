class CreateBloggerArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :blogger_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
