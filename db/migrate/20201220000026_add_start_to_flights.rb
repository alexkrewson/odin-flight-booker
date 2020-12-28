class AddStartToFlights < ActiveRecord::Migration[6.0]
  def change
    add_reference :flights, :start, class_name: "Airport"
  end
end
