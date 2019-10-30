class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end


    def self.count
        @@count
    end


    def self.genres
        @@genres.uniq
    end

    
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        new_hash = {}
        @@genres.each do |n|
            if new_hash[n]
                new_hash[n] += 1
            else 
                new_hash[n] = 1
            end
        end
        return new_hash
    end

    def self.artist_count
        new_hash = {}
        @@artists.each do |n|
            if new_hash[n]
                new_hash[n] += 1
            else 
                new_hash[n] = 1
            end
        end
        return new_hash
    end
    





end
