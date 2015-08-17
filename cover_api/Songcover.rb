class Songcover < ActiveRecord::Base

  def to_s
    "Cover songs: #{self.id} is orginally by #{self.originalArtist} and is covered by #{self.namecoverArtist}"
  end
end
