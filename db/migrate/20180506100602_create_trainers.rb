class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :Name
      t.text :Address
      t.integer :Current_weight
      t.integer :Height
      t.string :Gender
      t.string :Email

      t.timestamps
    end
  end
end
