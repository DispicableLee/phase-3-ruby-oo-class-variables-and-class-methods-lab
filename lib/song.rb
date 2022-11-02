class Song
    @@artists = []
    @@genres = []
    @@count = 0

    attr_accessor :title, :artist, :genre
    def initialize(title, artist, genre)
        @title = title
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end
