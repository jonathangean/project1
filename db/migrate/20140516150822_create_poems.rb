class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.integer :article_id
      t.string :poem_text
      t.timestamps
    end
  end
end
