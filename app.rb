require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  set :method_override, true

  get '/' do
   'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks_list
  end
  post '/bookmarks' do
    Bookmark.add(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end
  
  get '/add' do
    erb :add
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end
  #  run! if app_file == $0
end
