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
