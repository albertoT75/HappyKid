class AddweekDayToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :monday, :string
    add_column :reservations, :tuesday, :string
    add_column :reservations, :wednesday, :string
    add_column :reservations, :thursday, :string
    add_column :reservations, :friday, :string
    add_column :reservations, :saturday, :string
    add_column :reservations, :sunday, :string
  end
end
