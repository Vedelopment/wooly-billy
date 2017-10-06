class AddYToHairs < ActiveRecord::Migration[5.1]
  def change
    add_column :hairs, :y, :decimal
  end
end
