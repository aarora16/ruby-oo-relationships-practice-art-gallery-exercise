class Gallery
  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    self.class.all << self
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    paintings.map { |painting| painting.artist }.uniq!
  end

  def artist_names
    artists.map { |artist| artist.name }
  end

  def most_expensive_painting
    all_paintings = paintings.sort_by { |painting| painting.price }
    all_paintings[0]
  end

  def self.all
    @@all
  end

end
