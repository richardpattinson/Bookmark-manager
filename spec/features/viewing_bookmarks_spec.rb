feature 'viewing bookmarks' do
  scenario 'it shows me all the bookmarks' do 
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
    # expect(page).to have_content "bookmark 3"
  end 
end