class StatementsController < ApplicationController

	respond_to :json, :html

	def index
		respond_with Statement.all
	end

	def show
		specificStatement = []
		specificStatement.push(Statement.find_by_name(params[:id]))
		Statement.find_by_name(params[:id]).languages.each do |lang|
			specificLanguage = []
			specificLanguage.push(lang)
			specificLanguage.push(StatementLanguage.where({statement_id: specificStatement[0].id, language_id: lang.id}))
			specificStatement.push(specificLanguage)
		end
		respond_with specificStatement
	end

end
