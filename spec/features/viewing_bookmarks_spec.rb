require 'pg'
feature 'viewing bookmarks' do
   scenario 'user can see their bookmarks' do
     connection = PG.connect(dbname: 'bookmark_manager_test')
     connection.exec("INSERT INTO bookmarks VALUES(1, 'www.google.co.uk');")
     connection.exec("INSERT INTO bookmarks VALUES(2, 'euw.op.gg');")
     connection.exec("INSERT INTO bookmarks VALUES(3, 'www.reddit.com');")
     visit ('/bookmarks')
     expect(page).to have_content "www.google.co.uk"
     expect(page).to have_content "euw.op.gg"
     expect(page).to have_content "www.reddit.com"
   end
end
