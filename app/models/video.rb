require 'httparty'
class Video
  include HTTParty
  base_uri "reddit.com"
  default_params :output => 'json'
  format :json
end