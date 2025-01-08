class PopupMessageJob < ApplicationJob
  queue_as :default

  def perform(message, timestamp)
    Rails.logger.info "Performing job with message: #{message} and timestamp: #{timestamp}"

    # Broadcasting the message to the channel
    ActionCable.server.broadcast("popup_message_channel", { message: message, timestamp: timestamp })
  end  
end
