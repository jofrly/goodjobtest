require "test_helper"

class SendNotificationJobTest < ActiveJob::TestCase
  test "scheduling" do
    # ActiveJob::Base.queue_adapter = GoodJob::Adapter.new(execution_mode: :external)
    SendNotificationJob.set(wait: 1.hour).perform_later
    pp GoodJob::Execution.count
    pp GoodJob::ActiveJobJob.count
  end
end
