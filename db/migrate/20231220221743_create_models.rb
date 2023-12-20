class CreateModels < ActiveRecord::Migration[7.1]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :manufacturer_id
      t.string :year_introduced
      t.string :trims
      t.string :img

      t.timestamps
    end
  end
end
