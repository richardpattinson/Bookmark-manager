feature 'viewing bookmarks' do
  scenario 'it shows me all the bookmarks with titles' do 
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmark.add(url: "http://www.makersacademy.com",title: "Makers Academy")
    Bookmark.add(url: "http://www.google.com",title: "Google")
    visit('/bookmarks')
    expect(page).to have_content "Google"
    expect(page).to have_content "Makers Academy"

    # expect(page).to have_content "bookmark 3"
  end 
end