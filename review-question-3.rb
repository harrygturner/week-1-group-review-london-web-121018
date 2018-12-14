# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'
class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end
end

class Photo
  attr_accessor :user, :comments

  @@all = []

  def initialize
    @comments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def make_comment(string)
    @comments << Comment.new(string)
  end
end

class Comment
@@all = []

  def initialize(string)
    @string = string
    @@all << self
  end

  def self.all
    @@all
  end
end

sandwich_photo = Photo.new
photo1 = Photo.new
photo2 = Photo.new
photo3 = Photo.new
sophie = User.new("Sophie")
james = User.new("James")

sandwich_photo.user = sophie
photo2.user = sophie
photo1.user = sophie
photo3.user = james

binding.pry

sandwich_photo.user.name
# => "Sophie"
user.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
