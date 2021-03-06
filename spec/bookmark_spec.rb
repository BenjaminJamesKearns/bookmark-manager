require 'bookmark'
require 'link'
require 'database_helpers'

describe Bookmark do
   describe '.all' do
      it 'returns all bookmarks' do
        connection = PG.connect(dbname: 'bookmark_manager_test')
        bookmark = Bookmark.create(url: "www.google.co.uk", title: "google")
        Bookmark.create(url: "euw.op.gg", title: "op.gg")
        Bookmark.create(url: "www.reddit.com", title: "reddit")
        bookmarks = Bookmark.all
        expect(bookmarks.length).to eq 3
        expect(bookmarks.first).to be_a Bookmark
        expect(bookmarks.first.id).to eq bookmark.first['id']
        expect(bookmarks.first.title).to eq 'google'
        expect(bookmarks.first.url).to eq 'www.google.co.uk'
      end
   end
   describe '.create' do
     it 'creates a new bookmark' do
       bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
       persisted_data = persisted_data(id: bookmark.id)
       expect(bookmark).to be_a Bookmark
       expect(bookmark.id).to eq persisted_data.first['id']
       expect(bookmark.title).to eq 'Test Bookmark'
       expect(bookmark.url).to eq 'http://www.testbookmark.com'
     end
   end
end
