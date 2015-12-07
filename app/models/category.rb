class Category < ActiveRecord::Base
	has_many :categorizations
    has_many :profiles, through: :categorizations
end
