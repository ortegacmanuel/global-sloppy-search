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
    Book.search @q, operator: "or"
  end

  def find_games
    Game.search @q, operator: "or"
  end

  def find_videos
    Video.search @q, operator: "or"
  end

  def find_authors
    Author.search @q, operator: "or"
  end
end
