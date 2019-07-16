require 'test_helper'

class SchedulerMailerTest < ActionMailer::TestCase
  test "schedule" do
    mail = SchedulerMailer.schedule
    assert_equal "Schedule", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
