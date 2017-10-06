class AddRotateToHairs < ActiveRecord::Migration[5.1]
  def change
    add_column :hairs, :rotate, :decimal
  end
end
