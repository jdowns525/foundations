class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :foundation, foreign_key: true

      t.timestamps
    end
  end
end
