namespace :videos do
  desc "Fetch videos from reddit and make them video resource"
  task fetch: :environment do
    @reddit_videos = RedditVideo.get("https://www.reddit.com/r/videos/.json")["data"]["children"][0..5]
    @reddit_videos.each do |rv|
      Video.create(name: rv["data"]["secure_media"]["oembed"]["title"], youtube_url: rv["data"]["secure_media"]["oembed"]["html"], subreddit: rv["data"]["subreddit"], video_type: rv["data"]["secure_media"]["oembed"]["type"], thumbnail_url: rv["data"]["secure_media"]["oembed"]["thumbnail_url"])
    end
  end
end