class CreateFoundations < ActiveRecord::Migration[6.0]
  def change
    create_table :foundations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
