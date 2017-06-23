class Rating

  attr_accessor :score, :viewer, :movie

  @@all = []

  def initialize(viewer, movie, score)
    self.viewer = viewer
    self.movie = movie
    self.score = score
    @@all << self
  end

  def self.all
    @@all
  end
end
