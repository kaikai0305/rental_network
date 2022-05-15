class ReservationLending < ApplicationRecord
  belongs_to :reservation
  belongs_to :lending
end
