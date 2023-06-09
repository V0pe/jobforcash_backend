class CreateLaborers < ActiveRecord::Migration[7.0]
  def change
    create_table :laborers do |t|
      t.string :name
      t.string :skill
      t.string :city
      t.string :country
      t.decimal :price

      t.timestamps
    end
  end
end
