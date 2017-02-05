class NotificationMailer < ApplicationMailer
  def notify_new_soat(data={})
    @name_receiver = data[:name_receiver]
    @email_receiver = data[:email_receiver]
    @premium_value = data[:premium_value]
    @fosyga = data[:fosyga]
    @runt = data[:runt]
    @total_value = data[:total_value]
    @start_date = data[:start_date]
    @end_date = data[:end_date]

    mail(to: @email_receiver, subject: 'Pago Soat')
  end
end
