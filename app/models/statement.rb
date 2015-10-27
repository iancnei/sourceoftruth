class Statement < ActiveRecord::Base
	has_many :statement_languages
	has_many :languages, :through => :statement_languages
end
