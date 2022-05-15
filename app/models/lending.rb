class Lending < ApplicationRecord
  has_many :reservations

  def self.looks(search, word)
    if search == "perfect_match"
      @lending = Lending.where("title LIKE?","#{word}")
    elsif search == "forward_match"
      @lending = Lending.where("title LIKE?","#{word}%")
    elsif search == "backward_match"
      @lending = Lending.where("title LIKE?","%#{word}")
    elsif search == "partial_match"
      @lending = Lending.where("title LIKE?","%#{word}%")
    else
      @room = Room.all
    end
  end
end
