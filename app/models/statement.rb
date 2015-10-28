class Statement < ActiveRecord::Base
	has_many :examples
	has_many :languages, :through => :examples
end
