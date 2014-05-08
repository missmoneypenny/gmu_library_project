class AdminController < ApplicationController
  def index
   @total_reservations = Reservation.count 
  end
end
