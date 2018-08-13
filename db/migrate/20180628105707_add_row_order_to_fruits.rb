class AddRowOrderToFruits < ActiveRecord::Migration[5.0]
  def change
    add_column :fruits, :position, :integer
  end
end
