class Room < ApplicationRecord
  has_many :reservations
  
  def self.looks(search, word)
    if search == "perfect_match"
      @room = Room.where("name LIKE?", "#{word}")
    elsif search == "forward_match"
      @room = Room.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
      @room = Room.where("name LIKE?","%#{word}")
    elsif search == "partial_match"
      @room = Room.where("name LIKE?","%#{word}%")
    else
      @lending = Lending.all
    end
  end
end
