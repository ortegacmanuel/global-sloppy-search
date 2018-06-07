class GlobalSearchService
  def initialize(q, resources)
    @q = q
    @resources = resources
  end

  def perform
    results = {}
    return results if query_not_valid

    @resources.each do |resource|
      results[resource] = self.send("find_#{resource.to_s}")
    end

    results
  end

  private
  def query_not_valid
    @q.nil? || @q.empty?
  end

  def find_books
    Book.where('title LIKE :search OR description LIKE :search', search: "%#{@q}%")
  end

  def find_games
    Game.where('name LIKE :search OR description LIKE :search', search: "%#{@q}%")
  end

  def find_videos
    Video.where('title LIKE :search OR description LIKE :search', search: "%#{@q}%")
  end

  def find_authors
    Author.where('first_name LIKE :search OR last_name LIKE :search OR bio LIKE :search', search: "%#{@q}%")
  end
end
