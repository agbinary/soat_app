class Soat < ActiveRecord::Base
  belongs_to :user
  belongs_to :vehicle

  validates :user_id, :vehicle_id, :start_date, :end_date, :premium_value, :fosyga, :runt, :total_value, presence: true

  def set_dates(vehicle)
    soat = vehicle.return_soat
    if soat.any?
      self.start_date = soat.first.end_date + 1.day
      self.end_date = soat.first.end_date + 1.day + 1.year
    else
      self.start_date = Date.today
      self.end_date = Date.today + 1.year
    end
  end

  def calculate(vehicle)
    subtypes = vehicle.vehicle_class.subtypes
    if subtypes.count == 1
      pay_row = subtypes.first.contributions.first
      assign_values(pay_row.premium_value, pay_row.fosyga, pay_row.runt, pay_row.total_value)
    else
      subtype = subtypes.where(':subtype BETWEEN min and max', subtype: vehicle.subtype).first
      contributions = subtype.contributions
      if contributions.count == 1
        pay_row = subtype.contributions.first
        assign_values(pay_row.premium_value, pay_row.fosyga, pay_row.runt, pay_row.total_value)
      else
        contribution = contributions.where(':subtype BETWEEN min_age and max_age', subtype: vehicle.age).first
        assign_values(contribution.premium_value, contribution.fosyga, contribution.runt, contribution.total_value)
      end
    end
  end

  def update_pay
    self.pay == true
  end

  def deliver_email_for_pay
    data = { name_receiver: self.user.full_name,
             email_receiver: self.user.email,
             premium_value: self.premium_value,
             fosyga: self.fosyga,
             runt: self.runt,
             total_value: self.total_value,
             start_date: self.start_date,
             end_date: self.end_date
           }

    NotificationMailer.notify_new_soat(data).deliver_now
  end

  private

  def assign_values(premium_value, fosyga, runt, total)
    self.premium_value = premium_value
    self.fosyga = fosyga
    self.runt = runt
    self.total_value = total
  end
end
