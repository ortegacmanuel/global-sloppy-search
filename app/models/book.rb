class Book < ApplicationRecord
  searchkick

  def search_data
    {
      title: title,
      description: description
    }
  end

  def self.book_count
    Book.all.count
  end
end
