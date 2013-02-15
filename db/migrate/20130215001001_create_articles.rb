class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.datetime :created_at
      t.string :title
      t.text :text
      t.integer :next_article_id
      t.integer :previous_article_id

      t.timestamps
    end
  end
end
