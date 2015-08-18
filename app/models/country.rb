class Country < ActiveRecord::Base
	validates :title, presence: true, uniqueness: { case_sensitive: false }
	has_many :places
end
