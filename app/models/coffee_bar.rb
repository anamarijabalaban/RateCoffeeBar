class CoffeeBar < ApplicationRecord
	ratyrate_rateable "ambient", "coffee", "service","visuality"
	has_many :comments
	validates :name, presence: true
	validates :address, presence: true
end
