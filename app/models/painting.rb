class Painting
  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist)
    @title = title
    @price = price
    @artist = artist

    @@all << self
  end

  def self.total_price
    all.map { |painting| painting.price }.sum
  end

  def self.all
    @@all
  end
end
