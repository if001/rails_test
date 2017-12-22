require "kafka"
#require "ruby-kafka"

class UsersController < ApplicationController
  def new
    @user = Users.new
    @user[:name] = 'Shohei Aoki'
    @user[:username] = 'moyahima'
    @user[:location] = 'Tottori, Japan'
    @user[:about] = 'Nice to meet you.'
  end

  HOST="localhost"
  PORT=32778
  TOPIC='my-topic3'

  def show
    # kafka = Kafka.new(seed_brokers: [HOST+":"+PORT.to_s])
    # kafka.each_message(topic: TOPIC) do |message|
    #   puts message.offset, message.key, message.value
    #   #@messages = kafka.each_message(topic: TOPIC)

      # a mock search index that we'll be keeping up to date with new Kafka messages.
  end

end
