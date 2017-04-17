class HomeController < ApplicationController
  def index
    @videos = Video.get("https://www.reddit.com/r/videos/.json")["data"]["children"][0..5]
  end
end