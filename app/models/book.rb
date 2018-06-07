class Book < ApplicationRecord
  searchkick

  def search_data
    {
      title: title,
      description: description
    }
  end
end
