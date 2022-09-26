class Movie < ActiveRecord::Base
  def self.create_with_title(title)
    self.create(title: title)
  end

  def self.first_movie
    self.first
  end

  def self.last_movie
    self.last
  end

  def self.movie_count
    self.all.count
  end

  def self.find_movie_with_id(id)
    self.all.find(id)
  end

  def self.find_movie_with_attributes(args)
    self.all.find_by(args)
  end

  def self.find_movies_after_2002
    self.all.where("release_date > ?", 2002)
  end

  def update_with_attributes(args)
    self.update(args)
  end

  def self.update_all_titles(title)
    self.all.update(title: title)
  end

  def self.delete_by_id(id)
    self.all.destroy(id)
  end

  def self.delete_all_movies
    self.all.destroy_all
  end
end
