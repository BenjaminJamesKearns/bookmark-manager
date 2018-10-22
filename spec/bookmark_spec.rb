require 'bookmark'

describe Bookmark do 
   describe '.all' do 
      it 'returns all bookmarks' do 
         bookmarks = Bookmark.all
         expect(bookmarks).to include("https://www.google.co.uk/")
         expect(bookmarks).to include("http://euw.op.gg/")
         expect(bookmarks).to include("https://www.reddit.com/")
      end
   end
end