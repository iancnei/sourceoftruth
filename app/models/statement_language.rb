class StatementLanguage < ActiveRecord::Base
	belongs_to :statement
	belongs_to :language
end
