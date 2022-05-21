class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :lending
  belongs_to :room

  #enum quantity: { one: 0, two: 1, three: 2 }
end
