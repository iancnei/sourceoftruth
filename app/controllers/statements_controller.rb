class StatementsController < ApplicationController

	respond_to :json, :html

	def index
		respond_with Statement.all
	end

	def show
		specificStatement = {};
		specificStatement[:statement] = Statement.find_by_name(params[:id]);
		Statement.find_by_name(params[:id]).languages.each_with_index do |lang, index|
			if specificStatement[:language] == nil
				specificStatement[:language] = [];
			end
			specificStatement[:language].push(lang);
			if specificStatement[:example] == nil
				specificStatement[:example] = [];
			end
			specificStatement[:example].push(StatementLanguage.find_by_statement_id_and_language_id(specificStatement[:statement].id, lang.id))
			# specificStatement[:example].push(StatementLanguage.where({statement_id: specificStatement[:statement].id, language_id: lang.id}))
		end
		respond_with specificStatement
	end

end
