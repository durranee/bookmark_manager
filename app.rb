require 'sinatra'
require './lib/link'
class Bookmark < Sinatra::Base

  get '/' do
    @links = Link.new().all
    erb(:view_links)
  end

end
