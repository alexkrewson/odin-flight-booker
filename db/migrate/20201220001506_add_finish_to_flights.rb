class AddFinishToFlights < ActiveRecord::Migration[6.0]
  def change
    add_reference :flights, :finish, class_name: "Airport"
  end
end
