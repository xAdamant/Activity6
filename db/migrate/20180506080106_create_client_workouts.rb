class CreateClientWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :client_workouts do |t|
      t.string :client_name
      t.string :trainer
      t.integer :duration_mins
      t.date :date_of_workout
      t.decimal :paid_amount

      t.timestamps
    end
  end
end
