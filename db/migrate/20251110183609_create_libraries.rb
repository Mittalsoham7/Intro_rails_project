class CreateLibraries < ActiveRecord::Migration[8.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.text :address
      t.decimal :latitude
      t.decimal :longitude
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
