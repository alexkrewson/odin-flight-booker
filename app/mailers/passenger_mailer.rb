class PassengerMailer < ApplicationMailer
    default from: 'passengermailer@passengermailer.com'
puts "in the maaaaaaaaaaaaaaaaaaaaaaailer"
    def thankyou_email
        @passenger = (params[:passenger])
        @url  = 'http://passengermailer.com/login'
        mail(to: @passenger.email, subject: 'Passenger Mailer')
    end
end
