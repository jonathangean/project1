class ChangeArticleTextStringToText < ActiveRecord::Migration
  def change
    change_column :articles, :article_text, :text
  end
end
