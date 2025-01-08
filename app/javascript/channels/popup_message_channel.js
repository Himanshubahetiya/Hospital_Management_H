// app/javascript/channels/popup_message_channel.js
import { createConsumer } from "@rails/actioncable";

const consumer = createConsumer();  // This will automatically use the default cable connection.

consumer.subscriptions.create("PopupMessageChannel", {
  received(data) {
    console.log("Message received:", data.message);  // Check if data is logged in the console
    alert(data.message);  // Show the popup message
  }
});
