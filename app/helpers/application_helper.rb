module ApplicationHelper

  def youtube_embed(video)
    video.youtube_url.split(" ")[3].partition('=').last.rchomp('"').chomp('"') + "&autoplay=1"
  end
end
