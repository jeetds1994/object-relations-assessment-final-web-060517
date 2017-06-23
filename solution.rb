# Please copy/paste all three classes into this file to submit your solution!
class Viewer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    self.first_name = first_name
    self.last_name = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find{|obj| obj.full_name == name}
  end

  def self.all
    @@all
  end

  def create_rating(movie, score)
    Rating.new(self, movie, score)
  end
end


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
    sum = 0
    scores = ratings.map{|obj| obj.score}
    scores.each {|score| sum += score }
    sum / scores.length
  end

  def self.all
    @@all
  end

end
