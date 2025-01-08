class PopupMessageChannel < ApplicationCable::Channel
  def subscribed
    # This will stream messages from the 'popup_message_channel'
    stream_from "popup_message_channel"
  end

  def unsubscribed
    # Cleanup logic (if any) when the subscription is closed
  end
end
