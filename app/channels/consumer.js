import consumer from "./consumer";

consumer.subscriptions.create("PopupMessageChannel", {
  received(data) {
    console.log("Message received:", data.message);  // Check if data is logged
    alert(data.message);
  }
});
