require 'bookmark'

describe Bookmark do
   describe '.all' do
      it 'returns all bookmarks' do
         bookmarks = Bookmark.all
         expect(bookmarks).to include("www.google.co.uk")
         expect(bookmarks).to include("euw.op.gg")
         expect(bookmarks).to include("www.reddit.com")
      end
   end
end
