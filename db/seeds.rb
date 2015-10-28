# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create all the basic statements
allStatements = []
allStatements.push({name: "if", info_link: "https://en.wikipedia.org/wiki/Conditional_(computer_programming)"}, {name: "for", info_link: "https://en.wikipedia.org/wiki/For_loop"}, {name: "while", info_link: "https://en.wikipedia.org/wiki/While_loop"})

Statement.destroy_all

allStatements.each do |x|
	Statement.create(x)
end

# create all the languages
allLanguages = []
allLanguages.push({name: "Javascript", convention_link: "https://github.com/airbnb/javascript"}, {name: "Ruby", convention_link: "https://github.com/styleguide/ruby"})

Language.destroy_all

allLanguages.each do |x|
	Language.create(x)
end

# create all the text
allText = []
allText.push(
	{statement_id: Statement.find_by_name('if').id, language_id: Language.find_by_name('Javascript').id, text: "if(a > b)\n{\n  //do something\n}"},
	{statement_id: Statement.find_by_name('if').id, language_id: Language.find_by_name('Ruby').id, text: "if a > b\n  #do something\nend"},
	{statement_id: Statement.find_by_name('for').id, language_id: Language.find_by_name('Javascript').id, text: "for(var i = 0; i < limit; i++)\n{\n  //do something\n}"},
	{statement_id: Statement.find_by_name('for').id, language_id: Language.find_by_name('Ruby').id, text: "for i in limit\n  # do something\nend"},
	{statement_id: Statement.find_by_name('while').id, language_id: Language.find_by_name('Javascript').id, text: "while(a > b)\n{\n  //do something\n}"},
	{statement_id: Statement.find_by_name('while').id, language_id: Language.find_by_name('Ruby').id, text: "while a > b do\n	# do something\nend"})

Example.destroy_all

allText.each do |x|
	Example.create(x)
end

# Statement.first.statement_languages.map(&:text) # will return the text in an array
