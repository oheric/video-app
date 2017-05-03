require 'httparty'
class RedditVideo
  include HTTParty
  base_uri "reddit.com"
  default_params :output => 'json'
  format :json
end