puts "trying", Rails.root + 'db/data/all_names.txt'
fname = Rails.root + 'db/data/all_names.txt'
puts "Animal upload fname #{fname.to_s}"
File.open(fname, 'r') do|f| 
  animals = f.read
  animal_list = animals.split("\n")
  puts "length", animal_list.size
  animals.split("\n").each do |animal|
    image = animal.gsub(' ', '-')
    Animal.create(search_name: '#{animal}', image_name: '#{image}', real: 'Real')
  end
end
puts "Success: #{Animal.all.count}"
