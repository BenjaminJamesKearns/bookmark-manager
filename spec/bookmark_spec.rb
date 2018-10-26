require 'bookmark'
require 'link'

describe Bookmark do
   describe '.all' do
      it 'returns all bookmarks' do
         connection = PG.connect(dbname: 'bookmark_manager_test')
         connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.co.uk');")
         connection.exec("INSERT INTO bookmarks (url) VALUES ('euw.op.gg');")
         connection.exec("INSERT INTO bookmarks (url) VALUES ('www.reddit.com');")
         bookmarks = Bookmark.all
         expect(bookmarks).to include("www.google.co.uk")
         expect(bookmarks).to include("euw.op.gg")
         expect(bookmarks).to include("www.reddit.com")
      end
   end
   describe '.create' do
     it 'creates a new bookmark' do
       Bookmark.create(url: 'www.lolesports.com')
       expect(Bookmark.all).to include 'www.lolesports.com'
     end
   end
end
