class CreateImpacts < ActiveRecord::Migration[6.0]
  def change
    create_table :impacts do |t|
      t.references :foundation, foreign_key: true
      t.string :metric_name
      t.integer :metric_value

      t.timestamps
    end
  end
end
