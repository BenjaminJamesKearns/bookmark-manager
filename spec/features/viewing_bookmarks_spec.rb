feature 'viewing bookmarks' do
   scenario 'user can see their bookmarks' do
      visit ('/bookmarks')
      expect(page).to have_content "www.google.co.uk"
      expect(page).to have_content "euw.op.gg"
      expect(page).to have_content "www.reddit.com"
   end
end
