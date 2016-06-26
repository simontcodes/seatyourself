class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  def available_time_slots
    5..11
  end
end
