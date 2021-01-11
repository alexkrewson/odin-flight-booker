class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
    @flight = Flight.find(@booking.flight_id)
  end

  # GET /bookings/new 
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    puts "fliiiiiiiiiiiiiiiiiiiiiiiiiiiightidddddddddddddddddddddddd"
    puts @flight.id
    @passenger = Passenger.new
  end
  
  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    puts "creaaaaaaaaaaaaaaaaaaating paaaaaaaaaaaaaaaaassenger before"

    @passenger = Passenger.create(name: booking_params[:passengers][:name], email: booking_params[:passengers][:email])
    # @passenger = Passenger.create(name: "fakename", email: "fakeemail")


    puts "creaaaaaaaaaaaaaaaaaaating paaaaaaaaaaaaaaaaassenger after"

    @booking = Booking.new(flight_id: booking_params[:flight_id], passenger_id: @passenger.id)
    @flight = Flight.find(booking_params[:flight_id])

    puts "booooooooking naaaaaaaaaaaaaaaaaaaaaaaaaame"
    puts @passenger.name
    puts "booooooooking emaaaaaaaaaaaaaaaaaaaaaaaaaaaaaail"
    puts @passenger.email
    respond_to do |format|
      if @booking.save
        # BookingMailer.with(booking: @booking).thankyou_email.deliver_now
        PassengerMailer.with(passenger: @passenger).thankyou_email.deliver_now

        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:flight_id, passengers: [:name, :email])

    end
end
