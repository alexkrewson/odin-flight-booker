class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.datetime :begin_datetime
      t.float :duration

      t.timestamps
    end
  end
end