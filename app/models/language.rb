class Language < ActiveRecord::Base
	has_many :examples
	has_many :statements, :through => :examples
end
