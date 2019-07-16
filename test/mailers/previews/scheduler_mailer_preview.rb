# Preview all emails at http://localhost:3000/rails/mailers/scheduler_mailer
class SchedulerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/scheduler_mailer/schedule
  def schedule
    SchedulerMailer.schedule
  end

end
