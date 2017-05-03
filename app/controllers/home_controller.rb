class HomeController < ApplicationController
  def index
    @reddit_videos = RedditVideo.get("https://www.reddit.com/r/videos/.json")["data"]["children"][0..5]
    
  end
end