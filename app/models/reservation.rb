class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :lending
  belongs_to :room

  #enum quantity: { one: 0, two: 1, three: 2 }

  validate :duplicate_check

  def duplicate_check
    if Reservation.where('room_id = ? AND finish > ? AND ? > start', self.room_id, self.start, self.finish).present?
      errors.add(:start, "NG")
      errors.add(:finish, "NG")
    end
  end
end
