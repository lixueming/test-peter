class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.datetime :created_at
      t.string :video_url
      t.references :article

      t.timestamps
    end
    add_index :videos, :article_id
  end
end
