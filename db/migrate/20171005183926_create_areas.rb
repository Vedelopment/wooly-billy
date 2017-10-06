class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
