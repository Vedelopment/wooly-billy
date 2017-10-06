class CreateHairs < ActiveRecord::Migration[5.1]
  def change
    create_table :hairs do |t|
      t.text :body
      t.references :growable, polymorphic: true

      t.timestamps
    end
  end
end
