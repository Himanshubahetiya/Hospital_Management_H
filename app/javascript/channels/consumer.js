// app/javascript/channels/consumer.js
import { createConsumer } from "@rails/actioncable";

const consumer = createConsumer();  // Automatically uses ws://localhost:3000/cable

export default consumer;
