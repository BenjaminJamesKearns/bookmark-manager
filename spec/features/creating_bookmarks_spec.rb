feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmar to bookmark manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'www.youtube.com')
    click_button('submit')
    expect(page).to have_content 'www.youtube.com'
  end
end
