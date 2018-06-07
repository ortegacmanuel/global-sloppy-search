class SearchesController < ApplicationController
  def search
    @resources = load_resources
    @results = GlobalSearchService.new(params[:q], @resources).perform
  end

  private
  def load_resources
    [:books, :authors, :games, :videos]
  end
end
