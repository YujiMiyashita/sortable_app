class Fruit < ApplicationRecord
  acts_as_list top_of_list: 0

  # before_create :set_position
  #
  # def set_position
  #   if max = Fruit.maximum(:position)
  #     self.position = max + 1
  #   end
  # end
end
