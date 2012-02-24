class LibraryCard < ActiveRecord::Base
  has_many :items

  def fetch_items
    BookWorm::CplCrawler.new

  end

end
