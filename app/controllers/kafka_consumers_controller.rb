
require "kafka"

class KafkaConsumersController < ApplicationController
  PORT=32778
  TOPIC='my-topic3'

  def index
    kafka = Kafka.new(seed_brokers: ["localhost:"+PORT.to_s])
    consumer = kafka.consumer(group_id: "my-consumer")
    @messages = consumer.subscribe("notifications", start_from_beginning: false)
  end
end

