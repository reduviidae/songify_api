# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Song.destroy_all
Section.destroy_all
Snippet.destroy_all

50.times { Song.create({title: Faker::TvShows::RuPaul.quote}) }

Song.all.each do |song|
  1+rand(3).times do
    Section.create({ song_id: song.id, section_type: "verse"})
  end
end

Section.all.each do |section|
  1+rand(4).times do
    Snippet.create({section_id: section.id, content: Faker::Movies::Lebowski.quote})
  end
end

Section.all.each do |section|
  if section.snippets.length >=4
    section.complete = true
    section.save
  end
end
