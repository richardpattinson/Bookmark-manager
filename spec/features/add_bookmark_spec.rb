feature 'add a bookmark' do
  scenario 'can add a new bookmark' do
    visit('/add')
    fill_in :new_bookmark, with: "https://www.reddit.com"
    click_button('Submit')
    visit('/bookmarks')
    expect(page).to have_content("https://www.reddit.com")
  end
end