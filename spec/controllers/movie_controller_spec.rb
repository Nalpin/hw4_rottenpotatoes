require "spec_helper"

describe MoviesController do
  context "#find_similar_movies" do
    subject { Movie.create(:title => 'Dummy', :director => 'George Lucas') }
    it { should (:find_similar) }
    
  end
end
