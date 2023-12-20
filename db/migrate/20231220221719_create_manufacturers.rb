class CreateManufacturers < ActiveRecord::Migration[7.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :year_created
      t.string :country
      t.string :img_logo

      t.timestamps
    end
  end
end
