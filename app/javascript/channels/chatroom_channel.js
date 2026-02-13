import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
  },

  disconnected() {
  },

  received(data) {
    if (data.body) {
      console.log('Received message:', data.body);
    }
  }
});
