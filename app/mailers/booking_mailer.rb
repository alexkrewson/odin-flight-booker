class BookingMailer < ApplicationMailer
    default from: 'passengermailer@passengermailer.com'
    def thankyou_email
        @booking = params[:booking]
        puts "in the booooooooookingmaaaaaaaaaaaaaaaaaaaaaaailer"
        puts @booking
        @url  = 'http://passengermailer.com/login'
        mail(to: @booking.passenger_id, subject: 'Passenger Mailer')
    end
end
