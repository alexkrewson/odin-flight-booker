class FlightsController < ApplicationController

    def index
        
        if params[:search]
        
            # @from = params[:search][:from]
            # @to =   params[:search][:to]
            # @from_airport = Airport.find_by(code: @from)
            # @to_airport = Airport.find_by(code: @to)

            
            # puts "paraaaaaaaaaaaaaaaaaaammmmmmmmmmmmmmmmmsparams[:search]"
            # puts params[:search]

            # puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@from"
            # puts @from
            
            # puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@to"
            # puts @to

            # puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@from_airport.code"
            # puts @from_airport.code

            # puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@to_airport.code"
            # puts @to_airport.code

            @booking = Booking.new

            @flights_dates = @flights_froms = @flights_tos = Flight.all

            if params[:search][:date] != ""
                @flights_dates = Flight.all.where(begin_datetime: "#{params[:search][:date]}")
            end

            if params[:search][:from] != ""
                @from_airport = Airport.find_by(code: params[:search][:from])
                @flights_froms = Flight.all.where(start_id: @from_airport)
            end

            if params[:search][:to] != ""
                @to_airport = Airport.find_by(code: params[:search][:to])
                @flights_tos = Flight.all.where(finish_id: @to_airport)
            end



            # puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@flights_dates_count"
            # puts @flights_dates.count

            # puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@flights_froms_count"
            # puts @flights_froms.count

            @flights = @flights_dates & @flights_froms & @flights_tos



            # if params[:search][:date] != ""
            #     @flights = Flight.all.where(start_id: "#{@from_airport.id}", finish_id: "#{@to_airport.id}", begin_datetime: "#{params[:search][:date]}")
            # else
            #     @flights = Flight.all.where(start_id: "#{@from_airport.id}", finish_id: "#{@to_airport.id}")
            # end

        else

            @flights = Flight.all

        end




            # @arrival = Airport.where(code: params[:search])
        # puts "paraaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaams"
        # puts params[:search][:search_departures]
        
        # if params[:search][:search_departures]
        #     puts "searching deparrrrrrrrrrrrrrrrrrrrrrrrrrtures"
        #     @flights = Flight.search(params[:search][:search_departures],"d")
        # else
        #     puts "searching arrrrrrrrrrrrrrrrrrrrrrrrrrrrrivals"
        #     @flights = Flight.search(params[:search][:search_departures],"a")
        # end
    end

    def new
        @flight = Flight.new
    end


end
