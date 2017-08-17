class Track < ApplicationRecord
  belongs_to :album,
    class_name: 'Album',
    foreign_key: :album_id,
    primary_key: :id

    def better_tracks_query
     albums = self.albums.includes(:tracks)
     tracks_count = {}
     albums.each do |album|
       tracks_count[album.name] = album.tracks.length
     end
     tracks_count
   end
end
