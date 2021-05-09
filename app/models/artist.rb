require_relative '../config/environment'
class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs
    has_many :song_genres, through: :songs
    extend Slugifiable::ClassMethods
    include Slugifiable::InstanceMethods
  end