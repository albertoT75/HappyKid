class AddReferencesToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :kid, foreign_key: true
    add_reference :reservations, :game, foreign_key: true
  end
end
