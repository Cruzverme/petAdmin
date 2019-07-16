class SchedulerJob < ApplicationJob
  queue_as :emails

  def perform(scheduler)
    SchedulerMailer.scheduler(scheduler).deliver_now
  end
end
