require './app'

feature 'Bookmark' do
  scenario 'Can have content on home page' do
    visit('/')
    expect(page). to have_content("Hello World")
  end
end