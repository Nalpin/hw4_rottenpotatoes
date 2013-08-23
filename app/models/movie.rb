class Movie < ActiveRecord::Base
  #attr_reader :title, :director

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def find_similar
    Movie.find_all_by_director(self.director) - [self]
  end
end
