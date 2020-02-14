require 'bookmark' 
require 'capybara'

describe Bookmark do 

  describe '#all' do 
   
    it 'returns all bookmarks' do 
      connection = PG.connect(dbname: 'bookmark_manager_test')
      test1 = Bookmark.add(url: "http://www.makersacademy.com", title: "Makers Academy")
      test2 = Bookmark.add(url: "http://www.google.com", title: "Google")
      bookmarks = Bookmark.all
      expect(test1.title).to eq("Makers Academy")
      expect(test2.title).to eq("Google")
      # expect(bookmarks).to include "bookmark 3"
    end
  end
  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmark.add(title: 'Makers Academy', url: 'http://www.makersacademy.com')
    
      Bookmark.delete(id: bookmark.id)
  
      expect(Bookmark.all.length).to eq 0
    end
  end

end 