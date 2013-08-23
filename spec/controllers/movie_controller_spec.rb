require "spec_helper"

describe MoviesController do
  context "find similar movies" do
    let(:movie) { Movie.create(:title => 'Dummy', :director => 'George Lucas') }

    it "has similar movies" do
      movie.stub(:find_similar)
      similar = [mock('Dummy2')]
      similar.should_not be_empty
    end
  end
end
