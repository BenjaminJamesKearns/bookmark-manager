require 'pg'
feature 'viewing bookmarks' do
   scenario 'user can see their bookmarks' do
     Bookmark.create(url: 'www.google.co.uk', title: 'google')
     Bookmark.create(url: 'euw.op.gg', title: 'op.gg')
     Bookmark.create(url: 'www.reddit.com', title: 'reddit')
     visit ('/bookmarks')
     expect(page).to have_link('google', href: "www.google.co.uk")
     expect(page).to have_link('op.gg', href: "euw.op.gg")
     expect(page).to have_link('reddit', href: "www.reddit.com")
   end
end
