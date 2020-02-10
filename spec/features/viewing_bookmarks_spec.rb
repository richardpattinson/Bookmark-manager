feature 'viewing bookmarks' do
  scenario 'it shows me all the bookmarks' do 
    visit('/bookmarks')
    expect(page).to have_content "bookmark 1"
    expect(page).to have_content "bookmark 2"
    expect(page).to have_content "bookmark 3"
  end 
end