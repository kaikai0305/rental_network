class Reservation < ApplicationRecord
   has_many :rooms
   has_many :reservations,through: :reservation_lendings
   has_many :reservation_lendings

   accepts_nested_attributes_for :reservation_lendings, reject_if: :all_blank, allow_destroy: true
end
