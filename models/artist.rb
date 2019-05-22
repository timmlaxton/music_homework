require('pg')
require_relative('../models/album')
require_relative('./db/artist')


class Artist

    attr_reader :id, :name

    def initialize(options)
      @id = options['id'].to_i if options['id']
      @name = options['name']
    end

    def save()
      sql = "INSERT INTO artist (name) VALUES ($1) RETURNING id"
      values = [@name]
      result = SqlRunner.run(sql, values)
      @id = result[0]['id'].to_i
      end

      def self.delete_al()
        sql = "DELETE FROM artists"
        SqlRunner.run(sql)
      end

      def self.all()
        sql = "Select * FROM artists"
        artist = SqlRuner.run(sql)
        return artist.map{ |person| Artist.new(person)}
      end

      def album_list()
        sql = "SELECT * FROM albums WHERE artist_id = $1"
        values = [@id]
        discography = SqlRunner.run(sql, values)
        result = discography.map{ |music| Album.new(music)}
        return result
      end
      end
