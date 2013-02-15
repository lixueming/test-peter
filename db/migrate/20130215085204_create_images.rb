class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.datetime :created_at
      t.string :image_url
      t.references :article

      t.timestamps
    end
    add_index :images, :article_id
  end
end
