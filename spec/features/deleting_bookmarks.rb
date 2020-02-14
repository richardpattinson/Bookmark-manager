feature 'add a bookmark' do
    scenario 'can add a new bookmark' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      visit('/add')
      fill_in :new_title, with: "Reddit"
      fill_in :new_url, with: "https://www.reddit.com"
      click_button('Submit')
      visit('/bookmarks')
      click_button 'Delete'
      expect(page).to have_content("Reddit")
    end
end