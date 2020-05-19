class Character < ApplicationRecord

  def sort_by_ofp
    where(orderOfThePhoenix: true).group(:house)
  end
end