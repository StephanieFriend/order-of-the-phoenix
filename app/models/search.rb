class Search < ApplicationRecord

  def sort_by_ofp
    Character.where(orderOfThePhoenix: true).group(:house)
  end
end