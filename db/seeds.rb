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
allLanguages.push(
	{name: "Javascript", color: "#F0DB4F", convention_link: "https://github.com/airbnb/javascript"},
	{name: "Ruby", color: "#D34621", convention_link: "https://github.com/styleguide/ruby"})

Language.destroy_all

allLanguages.each do |x|
	Language.create(x)
end

# create all the text
allText = []
allText.push(
	{statement_id: Statement.find_by_name('if').id, language_id: Language.find_by_name('Javascript').id, text: "const a = 1;\nconst b= 2;\nif (a < b) {\n  // do something\n}"},
	{statement_id: Statement.find_by_name('if').id, language_id: Language.find_by_name('Ruby').id, text: "a, b = 1, 2\nif a > b\n  # do something\nend"},
	{statement_id: Statement.find_by_name('for').id, language_id: Language.find_by_name('Javascript').id, text: "const limit = 3;\nfor (i = 0; i < limit; i++) {\n  // do something\n}"},
	{statement_id: Statement.find_by_name('for').id, language_id: Language.find_by_name('Ruby').id, text: "arr = [1, 2, 3]\narr.each do |arrayItem|\n  # do something\nend "},
	{statement_id: Statement.find_by_name('while').id, language_id: Language.find_by_name('Javascript').id, text: "const a = 1;\nconst b = 2;\nwhile (a > b) {\n  // do something\n}"},
	{statement_id: Statement.find_by_name('while').id, language_id: Language.find_by_name('Ruby').id, text: "a, b = 1, 2\nwhile a > b\n  # do something\nend"})

Example.destroy_all

allText.each do |x|
	Example.create(x)
end

# Statement.first.statement_languages.map(&:text) # will return the text in an array
