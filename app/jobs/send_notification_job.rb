class SendNotificationJob < ApplicationJob
  queue_as :default

  def perform(*args)
    pp "sending notification..."
  end
end
