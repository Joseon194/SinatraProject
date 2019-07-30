class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :email
      t.string :name
      t.string :color
      t.string :company
      t.string :model_year
  end
end
end
