class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :foundation, foreign_key: true
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
