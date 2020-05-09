# frozen_string_literal: true

require 'discordrb'

bot = Discordrb::Bot.new token: ENV['API_TOKEN']

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run
