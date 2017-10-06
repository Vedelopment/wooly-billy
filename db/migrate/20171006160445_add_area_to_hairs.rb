class AddAreaToHairs < ActiveRecord::Migration[5.1]
  def change
    add_column :hairs, :area, :string
  end
end
