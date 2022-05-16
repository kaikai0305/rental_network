class Lending < ApplicationRecord
  has_many :reservations

  def self.looks(search, word)
    case search
    when "perfect_match"
       Lending.where("name LIKE ?","#{word}")
    when  "forward_match"
       Lending.where("name LIKE ?","#{word}%")
    when  "backward_match"
        Lending.where("name LIKE ?","%#{word}")
    when "partial_match"
        Lending.where("name LIKE ?","%#{word}%")
    end
  end
end
