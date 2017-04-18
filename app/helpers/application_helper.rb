module ApplicationHelper

  def youtube_embed(video)
    video["data"]["media_embed"]["content"].split(" ")[3].partition('=').last.rchomp('"').chomp('"') + "&autoplay=1"
  end
end
