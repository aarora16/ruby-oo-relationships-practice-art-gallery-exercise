class Artist
  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    self.class.all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq!
  end

  def cities
    galleries.map { |gallery| gallery.city }
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price, self)
    new_painting.gallery = gallery
  end

  def find_efficiency
    self.paintings.length.to_f / self.years_experience.to_f
  end

  def self.total_experience
    all.map { |artist| artist.years_experience }.sum
  end

  def self.most_prolific
    best_artist = all.sort_by do |artist|
      artist.find_efficiency
    end
    best_artist[-1]
  end

  def self.all 
    @@all
  end

end
