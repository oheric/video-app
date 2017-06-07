class HomeController < ApplicationController
  def index
    @reddit_videos = RedditVideo.get("https://www.reddit.com/r/videos/.json")["data"]["children"][0..5]
    @videos = [OEmbed::Providers.get("https://youtu.be/4VnMmBmiKw8")]
    # Video.all.each do |v|
    #   @url = v.youtube_url.split(" ")[3].partition('=').last.rchomp('"').chomp('"') + "&autoplay=1"
    #   @videos << OEmbed::Providers.get(@url)
    # end
  end
end