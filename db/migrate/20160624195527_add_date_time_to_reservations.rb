class AddDateTimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :date, :datetime
  end
end
