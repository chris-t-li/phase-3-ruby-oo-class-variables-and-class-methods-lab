class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        return_hash = {}
        @@genres.uniq.each do |genre|
            return_hash[genre] = @@genres.count(genre)
        end
        return_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.uniq.each do |artist|
            artist_hash[artist] = @@artists.count(artist)
        end
        artist_hash
    end
end