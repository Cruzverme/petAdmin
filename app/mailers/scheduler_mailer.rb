class SchedulerMailer < ApplicationMailer
  def scheduler(scheduler)
    @scheduler = scheduler
    mail to: @scheduler.client.email, subject: "Your #{@scheduler.service.title} are schedule to #{@scheduler.date}"
  end
end
