require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
   'Bookmark Manager'
  end

  get '/bookmarks' do
    @list = Bookmark.all
    erb :bookmarks_list
  end

  get '/add' do
    Bookmark.add(params[:new_url], params[:new_title])
    erb :add
  end

  #  run! if app_file == $0
end
