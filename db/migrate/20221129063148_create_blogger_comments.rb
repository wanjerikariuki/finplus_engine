class CreateBloggerComments < ActiveRecord::Migration[7.0]
  def change
    create_table :blogger_comments do |t|
      t.integer :article_id
      t.text :text

      t.timestamps
    end
  end
end
