class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.text :youtube_url
      t.string :subreddit
      t.string :video_type
      t.text :thumbnail_url
      t.text :body
      t.text :abstract
      t.string :view_count
      t.string :category

      t.timestamps
    end
  end
end
