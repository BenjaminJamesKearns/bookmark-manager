require 'pg'

class Clear
  def self.clear
    p "setting up test database..."

    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("TRUNCATE bookmarks;")
  end
end
