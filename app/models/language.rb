class Language < ActiveRecord::Base
	has_many :statement_languages
	has_many :statements, :through => :statement_languages
end
