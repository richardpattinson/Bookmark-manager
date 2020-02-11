require 'pg'

class Bookmark
#self is a new instance of a class
  def self.all
    conn = PG.connect( dbname: 'bookmark_manager' )
    result = conn.exec( "SELECT * FROM bookmarks" )
    result.map { |bookmark| bookmark['url'] }
  end
end
