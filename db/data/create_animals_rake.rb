db_statements = File.open(Rails.root + "lib/tasks/load_animals.rake", 'w')
db_statements.write "namespace :load_animals do\n"
db_statements.write "  desc 'load animal names'\n"
db_statements.write "  task initialize: :environment do\n"
puts "trying", Rails.root + '/db/data/all_names.txt'
fname = Rails.root + 'db/data/all_names.txt'
puts "fname #{fname.to_s}"
File.open(fname, 'r') do|f| 
  animals = f.read
  animal_list = animals.split("\n")
  puts "length", animal_list.size
  animals.split("\n").each do |animal|
    image = animal.gsub(' ', '-')
    db_stmt = "    Animal.create(search_name: '#{animal}', image_name: '#{image}', real: 'Real')\n"
    db_statements.write db_stmt
    puts "trying to add #{animal}"
  end
end
db_statements.write  "Animal.create(search_name: 'Goblin', image_name: 'Goblin', real: 'Imaginary', habitat: 'In the bushes on Halloween')"
db_statements.write "  end\n"
db_statements.write "end\n"
db_statements.close
