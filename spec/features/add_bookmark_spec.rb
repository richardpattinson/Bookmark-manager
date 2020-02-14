feature 'add a bookmark' do
  scenario 'can add a new bookmark' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    visit('/add')
    fill_in 'title', with: "Reddit"
    fill_in 'url', with: "https://www.reddit.com"
    click_button('Submit')
    visit('/bookmarks')
    expect(page).to have_content("Reddit")
  end
end
feature 'delete a bookmark' do
  scenario 'can delete a new bookmark' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    visit('/add')
    fill_in 'title', with: "Reddit"
    fill_in 'url', with: "https://www.reddit.com"
    click_button('Submit')
    visit('/bookmarks')
    click_button 'Delete'
    expect(page).not_to have_content("Reddit")
  end
end