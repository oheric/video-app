class HomeController < ApplicationController
  def index
    @reddit_videos = RedditVideo.get("https://www.reddit.com/r/videos/.json")["data"]["children"][0..5]
    @video_array = []
    @reddit_videos.each do |video|
      if video["data"]["secure_media"]["oembed"]["provider_name"] == "YouTube"
        @video_array << OEmbed::Providers.get(video["data"]["url"])
      end
    end

    # @videos = [OEmbed::Providers.get("https://www.youtube.com/watch?v=ZKSWXzAnVe0")]


    # Video.all.each do |v|
    #   @url = v.youtube_url.split(" ")[3].partition('=').last.rchomp('"').chomp('"') + "&autoplay=1"
    #   @videos << OEmbed::Providers.get(@url)
    # end
  end
end