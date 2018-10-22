feature 'viewing bookmarks' do 
   scenario 'user can see their bookmarks' do 
      visit ('/bookmarks')
      expect(page).to have_content "https://www.google.co.uk/"
      expect(page).to have_content "http://euw.op.gg/"
      expect(page).to have_content "https://www.reddit.com/"
   end
end