feature 'Bookmark' do
  scenario 'Can have content on home page' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end
end
