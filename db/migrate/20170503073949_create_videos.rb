class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :youtube_url
      t.string :subreddit
      t.string :type
      t.string :thumbnail_url
      t.text :body
      t.text :abstract
      t.string :view_count
      t.string :category

      t.timestamps
    end
  end
end
