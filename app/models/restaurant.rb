class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations

  def available_time_slots
    5..11
  end
end
