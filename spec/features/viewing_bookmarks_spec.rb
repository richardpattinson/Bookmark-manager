feature 'viewing bookmarks' do
  scenario 'it shows me all the bookmarks with titles' do 
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmark.add("http://www.makersacademy.com", "Makers Academy")
    Bookmark.add("http://www.google.com", "Google")
    visit('/bookmarks')
    expect(page).to have_content "Google"
    expect(page).to have_content "Makers Academy"

    # expect(page).to have_content "bookmark 3"
  end 
end