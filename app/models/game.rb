class Game < ApplicationRecord
  searchkick

  def search_data
    {
      name: name,
      description: description
    }
  end
end
