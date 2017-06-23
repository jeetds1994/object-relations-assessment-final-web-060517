class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    self.title = title
    @@all << self
  end

  def self.find_by_title(title)
    self.all.find{|obj| obj.title == title}
  end

  def ratings
    Rating.all.find_all{|obj| obj.movie.title = self}
  end

  def viewers
    ratings.map{|obj| obj.viewer}
  end

  def average_rating
    scores_for_movie = ratings.map{|obj| obj.score}
    scores_for_movie.average / scores_for_movie.length
  end

  def self.all
    @@all
  end

end

Movie#average_rating
should return the average of all of the scores for the ratings of that particular movie.
