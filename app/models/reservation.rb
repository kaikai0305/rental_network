class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :lending
  belongs_to :room


end
