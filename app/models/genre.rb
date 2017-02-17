class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
    # return the number of songs in a genre
  end

  def artist_count
    artists.size
  end

  def all_artist_names
    self.artists.map do |n|
      n.name
  end
end

end
