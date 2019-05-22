require('pg')
require_relative('../models/album')
require_relative('../models/artist')
require_relative('../db/sql_runner')


class Album


    attr_reader :name, :genre, :artist_id

    def initialize(options)
      @title = options['title']
      @genre = options['genre']
      @id = options['id'].to_i if options['id']
      @artist_id = options['artist_id'].to_i
    end

    def save
      sql = "INSERT INTO albums (title, genre, id, artist_id) VALUES ($1, $2, $3) RETURNING id"
      values = [@title, @genre, @artist_id]
      @id = SqlRunner.run(sql, values)[0]["id"].to_i
    end

    def self.delete_all()
      sql = "DELETE FROM albums"
      SqlRunner.run(sql)
    end

    def self.all()
      sql = "Select * FROM albums"
      music = SQLRunner.run(sql)
      return music.map{ |album| Album.new(album)}
    end

    end
