class ReservationsController < ApplicationController
before_action :set_reservation, only: [ :show, :edit, :update, :destroy]	

def create
	book = Book.find(params[:book_id])
	@reservation = @user.reservation.build(book: book)

	respond to do |format|
		if @reservation.save
			format.html {redirect_to reservation_url, notice: 'Reservation was successfully created.'}
			format.json {render action: 'show', status: :created, location: @reservation}
		else
			format.html { render action: 'new'}	
			format.json {render json: @reservation.errors, status: :unprocessable_entity}
		end	
	end
end		

def destroy
	  @reservation.destroy
	  redirect_to books_url
	end

def show
	 end

def edit
	 end

	def update
	  if @reservation.update
	        redirect_to @reservation, notice: "Reservations updated!"
	      else
	        render :new
	      end
	end	 	

def new
	  @reservation = Reservation.new
	end	
end
