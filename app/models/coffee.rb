class Coffee < ApplicationRecord
  belongs_to :coffee_shop
  belongs_to :customer
end
