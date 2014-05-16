class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :article_name
      t.string :article_text
      t.integer :user_id
      t.timestamps
    end
  end
end
