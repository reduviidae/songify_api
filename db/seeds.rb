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
	array_of_sections = ["verse", "verse", "chorus", "verse", "verse"]
  array_of_sections.length.times do
		section_name = array_of_sections.shift()
    Section.create({ song_id: song.id, section_type: section_name })
  end
end



Section.all.each do |section|
  1+rand(4).times do
    Snippet.create({section_id: section.id, content: Faker::Movies::Lebowski.quote})
  end
end

Section.all.each do |section|
  if section.section_type == "chorus" && section.snippets.length >=2
		section.complete = true
		section.save
	end

	if section.section_type == "verse" && section.snippets.length >=4
		section.complete = true
		section.save
	end
end

Song.all.each do |song|
	if song.snippets.size >= 18
		song.complete = true
		song.save
	end
end
