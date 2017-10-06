class AddXToHairs < ActiveRecord::Migration[5.1]
  def change
    add_column :hairs, :x, :decimal
  end
end
