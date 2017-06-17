class HomeController < ApplicationController
  def index
    @reddit_videos = RedditVideo.get("https://www.reddit.com/r/videos/.json")["data"]["children"][0..5]
    @videos = Video.all
  end
end