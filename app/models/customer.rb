class Customer < ApplicationRecord
    has_many :coffees
    has_many :coffee_shops, through: :coffees
end
