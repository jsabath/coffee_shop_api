class CoffeeShop < ApplicationRecord
  has_many :coffees
  has_many :customers, through: :coffees
end
